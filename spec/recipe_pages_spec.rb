# require('capybara/rspec')
# require('./app')
# Capybara.app = Sinatra::Application
# set(:show_exceptions, false)
require('spec_helper')

describe('the add recipe path', {:type => :feature}) do
  it('adds a recipe') do
    visit('/recipes')
    fill_in('name', :with => 'Pasta Salad')
    fill_in('ingredients', :with => 'Pasta, Tomatoes, Onions, Mayo')
    fill_in('instructions', :with => 'Cook pasta, chill, mix')
    fill_in('rating', :with => '3')
    click_button('Add Recipe')
    expect(page).to have_content('Pasta Salad')
  end
end

describe('the update recipe path', {:type => :feature}) do
  it('updates a recipe') do
    visit('/recipe/3')
    fill_in('name', :with => 'Pasta Salad')
    fill_in('ingredients', :with => 'Pasta, Tomatoes, Onions, Mayo')
    fill_in('instructions', :with => 'Cook pasta, chill, mix')
    fill_in('rating', :with => '5')
    click_button('Update')
    visit('/recipe/3')
    save_and_open_page
    expect(page).to have_content('5')
  end
end
