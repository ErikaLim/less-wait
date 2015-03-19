class RestaurantsController < ApplicationController
  def splash
  end

  def search_yelp

  end

  def show
    res = Yelp.client.search('San Francisco', { term: params[:search] })
    @business = res.businesses[0]
    render restaurant_path
  end
end
