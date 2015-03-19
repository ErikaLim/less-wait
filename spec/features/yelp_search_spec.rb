require 'rails_helper'

feature Yelp do

  scenario "user can search yelp for restaurants by name" do
    VCR.use_cassette('yelp santung') do
      visit root_path
      fill_in('search', :with => "San Tung Chinese")
      click_button('Submit')

      expect(page).to have_content("San Tung Chinese Restaurant")
    end
  end

  scenario "user can search yelp by category" do
    VCR.use_cassette('yelp japanesecurry') do
      visit root_path
      fill_in('search', :with => "Japanese curry")
      click_button('Submit')

      expect(page).to have_content("Volcano")
    end
  end

  scenario "user can see the number of reviews a restaurant has" do
    VCR.use_cassette('yelp santung') do
      visit root_path
      fill_in('search', :with => "San Tung Chinese")
      click_button('Submit')
      expect(page).to have_content("4392 reviews")
    end
  end

  scenario "user can see ratings" do
    VCR.use_cassette('yelp santung') do
      visit root_path
      fill_in 'search', with: "San Tung Chinese"
      click_on 'Submit'
      expect(page).to have_xpath("/html/body/table/tbody/tr[1]/td[4]/img")
    end
  end

  feature "Location" do
    scenario "distance from current location" do
      VCR.use_cassette('yelp santung') do
        visit root_path
        fill_in 'search', with: "San Tung Chinese"
        click_on 'Submit'
        save_and_open_page
        expect(page).to have_content("1031 Irving St, San Francisco, CA 94122")
      end
    end
  end
end
