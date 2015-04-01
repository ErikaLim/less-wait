class WaitTimesController < ApplicationController

  def create
    restaurant = Restaurant.find_or_create_by(yelp_id:params[:restaurant_id])
    restaurant.wait_times.create(time:params[:wait_time])
    render nothing: true, status: 200
  end
  
end
