# require('capybara/rspec')
# require('./app')
# Capybara.app = Sinatra::Application
# set(:show_exceptions, false)

describe('the add recipe path', {:type => :feature}) do
  it('adds a recipe') do
    visit('/recipe_add')
    fill_in('name', :with => 'Pasta Salad')
    fill_in('ingredients', :with => 'Pasta, Tomatoes, Onions, Mayo')
    fill_in('instructions', :with => 'Cook pasta, chill, mix')
    fill_in('rating', :with => '3')
    click_button('Add Recipe')
    expect(page).to have_content('Pasta Salad')
  end
end
