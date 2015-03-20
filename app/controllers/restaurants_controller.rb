class RestaurantsController < ApplicationController
  def splash
  end

  def search_yelp

  end

  def show
    response = Yelp.client.search('San Francisco', { term: params[:search], coordinates: "#{params[:lat]},#{params[:lng]}" })
    @businesses = response.businesses

    @my_businesses = {
      
    }

    @businesses.each do |business|
      # p business
    end
    render restaurant_path
  end
end
