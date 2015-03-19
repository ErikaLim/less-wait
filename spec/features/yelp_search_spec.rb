require 'rails_helper'

feature Yelp do

  scenario "user can search yelp for restaurants by name" do
    visit root_path
    fill_in('search', :with => "San Tung Chinese")
    click_button('Submit')

    expect(page).to have_content("San Tung Chinese Restaurant")
  end

  scenario "user can search yelp by category" do
    visit root_path
    fill_in('search', :with => "Japanese curry")
    click_button('Submit')

    expect(page).to have_content("Volcano Curry")
  end
end
