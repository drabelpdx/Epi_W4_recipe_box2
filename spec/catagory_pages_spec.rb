require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the add category path', {:type => :feature}) do
  it('adds a category') do
    visit('/')
    fill_in('name', :with => 'Beverage')
    click_button('Add Category')
    expect(page).to have_content('Beverage')
  end
end
