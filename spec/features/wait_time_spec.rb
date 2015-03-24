require 'rails_helper'
require 'spec_helper'
require_relative './helpers/application'

feature "entering wait time" do
  pending scenario "specifying a wait time for a resturant" do
    app = Application.new
    visit root_path
    app.search_for_type_of_food('pizza')
    app.click_on_first_link
    app.enter_wait_time('20')
    expect(app.presents_updated_user_with_average_wait_time).to eq(20)
  end
end
