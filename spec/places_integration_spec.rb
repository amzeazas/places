require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the path of places', {:type =>:feature}) do
  it('processes the user entry and adds it to a list of places') do
    visit('/')
    fill_in('location', :with => "Cardiff, Wales")
    click_button('Add Place')
    expect(page).to have_content('Your place has been successfully added.')
  end
end
