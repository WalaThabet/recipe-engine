# require 'rails_helper'

# RSpec.feature "Recipe Search", type: :feature, js: true do
#   let!(:user) { create(:user) }
#   let!(:recipe) { create(:recipe, title: "Special Dish") }
#   let!(:other_recipes) { create_list(:recipe, 5) }

#   before do
#     # Assuming you are using Devise for authentication
#     login_as(user, scope: :user)
#     visit recipes_path
#   end

#   scenario "User searches for a recipe by title" do
#     fill_in "search-dropdown", with: "Special Dish"
#     select 'Title', from: 'selected_search_by'
#     click_button "Search"

#     expect(page).to have_content("Special Dish")
#     other_recipes.each do |recipe|
#       expect(page).not_to have_content(recipe.title)
#     end
#   end

#   scenario "User clears the search" do
#     fill_in "search-dropdown", with: "Special Dish"
#     select 'Title', from: 'selected_search_by'
#     click_button "Search"

#     click_button "Clear Search"

#     # Assuming your page reloads and shows all recipes again
#     expect(page).to have_content(recipe.title)
#     other_recipes.each do |other_recipe|
#       expect(page).to have_content(other_recipe.title)
#     end
#   end
# end
