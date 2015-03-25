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

  # pending scenario "user can click on restaurant name which will bring them to the business page on yelp" do
  #   VCR.use_cassette('yelp pizza') do
  #     visit root_path
  #     fill_in('search', :with => "pizza")
  #     click_button('Submit')
  #
  #     expect(page).to have_content("Little Star Pizza")
  #     # save_and_open_page
  #     click_on("Little Star Pizza")
  #     find("yelp.com/biz/little-star-pizza-san-francisco")
  #     # expect(current_url).to be("yelp.com/biz/little-star-pizza-san-francisco")
  #   end
  # end

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
      expect(page).to have_content("4392 Reviews")
    end
  end

  scenario "user can see ratings" do
    VCR.use_cassette('yelp santung') do
      visit root_path
      fill_in 'search', with: "San Tung Chinese"
      click_on 'Submit'
      expect(page).to have_xpath("/html/body/div[1]/div/div/div/li[1]/img")
    end
  end

  scenario "user can see phone number of the restaurant" do
    VCR.use_cassette('yelp pizza') do
      visit root_path
      fill_in('search', :with => "pizza")
      click_button('Submit')
      expect(page).to have_content("(415) 441-1118")
    end
  end

  feature "Location" do
    scenario "User can see the location (address) of the restaurants" do
      VCR.use_cassette('yelp santung') do
        visit root_path
        fill_in 'search', with: "San Tung Chinese"
        click_on 'Submit'

        expect(page).to have_content("1031 Irving St, San Francisco, CA 94122")
      end
    end
  end
end
