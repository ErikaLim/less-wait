require 'rails_helper'

describe Yelp do
  it "user can search yelp for restaurants by name" do
    visit root_path

    fill_in('search', :with => "San Tung Chinese")

    click_button('Submit')

    expect(page).to have_content("San Tung Chinese Restaurant")
  end
end
