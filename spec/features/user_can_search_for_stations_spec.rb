require 'rails_helper'

feature "user can search for nearest stations" do

  scenario "user submits valid zipcode" do
    visit '/'

# And I fill in the search form with 80203
    fill_in 'q', with: '80203'
    click_on "Locate"

    expect(current_path).to eq(search_path)
    expect(page).to have_content("10 Results")
    expect(page).to have_css(".station", count: 10)

    within(first(".station")) do
      expect(page).to have_css(".name")
      expect(page).to have_css(".address")
      expect(page).to have_css(".fuel_type")
      expect(page).to have_css(".distance")
      expect(page).to have_css(".access_times")
    end
  end
end

# As a user
# When I visit "/"
# And I fill in the search form with 80203
# And I click "Locate"
# Then I should be on page "/search" with parameters visible in the url
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
