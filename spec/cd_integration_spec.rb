require "capybara/rspec"
require "./app"

Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe("add cd", {:type => :feature}) do
  it("will return the user's CD name on a new page after clicking the Add CD button") do
    visit("/")
    fill_in("cd-name", :with => "Graceland")
    click_button("Add CD")
    expect(page).to have_content("Graceland")
  end
end

describe("add and artist", {:type => :feature}) do
  it("will return the user's Artist name on a new page after clicking the Add artist button") do
    visit("/")
    fill_in("artist-name", :with => "Prince")
    click_button("Add artist")
    expect(page).to have_content("Prince")
  end
end
