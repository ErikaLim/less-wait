class RestaurantsController < ApplicationController
  def splash
  end

  def search_yelp

  end

  def show
    response = Yelp.client.search('San Francisco', { term: params[:search] })
    @businesses = response.businesses
    render restaurant_path
  end
end
