# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

restaurants = Restaurant.all
wait_time_samples = [5, 10, 15, 30, 40, 45, 60, 75, 90, 120]

restaurants.each do |restaurant|
  restaurant.wait_times.create({
    time: wait_time_samples.sample
  })
end
