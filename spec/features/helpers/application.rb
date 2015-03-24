require 'rails_helper'

class Application
  include Capybara::DSL

  def search_for_type_of_food(food)
    VCR.use_cassette('yelp pizza') do
      fill_in('search', :with => food)
      click_button('Submit')
    end
  end

  def visiting_first_item
    find '//tbody/tr[1]/td[1]/text()'
    first_link = find(:xpath, '//tbody/tr[1]/td[1]').text

    click_button(first_link)
  end

  def enter_wait_time(minutes)
  end

  def to_be_on_page_with_tag(category)
    tags.any? { |tag| tag.has_content?(category) }
  end

  def presents_updated_user_with_average_wait_time
  end

  private

  def tags
    find 'td'
  end
end
