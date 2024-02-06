# app/controllers/recipes_controller.rb
class RecipesController < ApplicationController
  def index
    if params[:search].present?
      # Determine the attribute to search by
      search_by = params[:search_by] || 'title'  # Default to 'title' if not specified

      # Perform the search based on the selected attribute
      case search_by
      when 'title'
        @recipes = Recipe.search(ThinkingSphinx::Query.escape(params[:search]), conditions: { title: params[:search] }, page: params[:page], per_page: 10)
      when 'cuisine'
        @recipes = Recipe.search(ThinkingSphinx::Query.escape(params[:search]), conditions: { cuisine: params[:search] }, page: params[:page], per_page: 10)
      when 'category'
        @recipes = Recipe.search(ThinkingSphinx::Query.escape(params[:search]), conditions: { category: params[:search] }, page: params[:page], per_page: 10)
      when 'author'
        @recipes = Recipe.search(ThinkingSphinx::Query.escape(params[:search]), conditions: { author: params[:search] }, page: params[:page], per_page: 10)
      end
    else
      # If no search query is provided, simply paginate all recipes
      @recipes = Recipe.page(params[:page]).per(10)
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end
end
