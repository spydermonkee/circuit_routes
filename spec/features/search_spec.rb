require 'spec_helper.rb'

feature "Looking up boulder routes", js: true do
  scenario "finding routes" do
    visit '/'
    fill_in "keywords", with: "route"
    click_on "Search"

    expect(page).to have_content("Jonn's first route")
    expect(page).to have_content("Jonn's second route")
    expect(page).to have_content("Bill's awesome route!")
    expect(page).to have_content("Jim's route is the most fun")
  end
end