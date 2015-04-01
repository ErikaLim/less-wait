class RestaurantsController < ApplicationController
  respond_to :json

  def splash
  end

  def show
  end

  def search_yelp
    response = Yelp.client.search('San Francisco', {term: params[:s]})

    businesses = response.businesses.map do |business|

      db_restaurant = Restaurant.find_by(yelp_id:business.id)

      if db_restaurant && db_restaurant.wait_times.last.created_at < 2.hour.ago
        last_wait_time = db_restaurant.wait_times.last
        wait_time = {
          time: last_wait_time.time,
          created_at: last_wait_time.created_at,
        }
      else
        wait_time = nil
      end

      categories = business.categories.map do |category_arr|
        category_arr.first
      end

      {
        wait_time: wait_time,
        id: business.id,
        name: business.name,
        url: business.url,
        # image_url: business.image_url,
        review_count: business.review_count,
        categories: categories,
        star_rating: business.rating_img_url,
        rating: business.rating,
        address: "#{business.location.display_address.first }, #{business.location.display_address.last}",
        phone: display_phone(business.display_phone),
        geocoords: [business.location.coordinate.longitude, business.location.coordinate.latitude],
      }
    end

    render json: businesses
  end

  private

  def display_phone(phone_number)
    parts = phone_number.split('-')

    "(#{parts[1]}) #{parts[2]}-#{parts[3]}"
  end
end
