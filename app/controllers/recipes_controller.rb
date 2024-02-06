class RecipesController < ApplicationController
  def index
    @recipes = Recipe.page(params[:page]).per(10)
  end

  def show
    Recipe.find(params[:id])
  end
end
