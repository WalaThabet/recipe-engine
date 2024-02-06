class RecipesController < ApplicationController
  def index
    # Check if the search parameter is present and not blank
    if params[:search].present?
      @recipes = Recipe.search(params[:search])
    else
      @recipes = Recipe.all
    end

    @recipes = @recipes.page(params[:page]).per(10)
  end
end
