class RestaurantsController < ApplicationController
  def splash
  end

  def show
    response = Yelp.client.search('San Francisco', { term: params[:search], coordinates: "#{params[:lat]},#{params[:lng]}" })
    businesses = response.businesses

    @businesses = businesses.map do |business|
      {
        name: business.name,
        url: business.url,
        image_url: business.image_url,
        review_count: business.review_count,
        categories: business.categories,
        star_rating: business.rating_img_url,
        rating: business.rating,
        address: "#{business.location.display_address.first }, #{business.location.display_address.last}",
        phone: display_phone(business.display_phone)
      }
    end

    render restaurant_path

  end

  private

  def display_phone(phone_number)
    parts = phone_number.split('-')

    "(#{parts[1]}) #{parts[2]}-#{parts[3]}"
  end
end
