# frozen_string_literal: true

class RecipesController < ApplicationController
  before_action :authenticate_user!

  def index
    if params[:search].present?
      search_by = params[:search_by] || 'title'
      escaped_search = ThinkingSphinx::Query.escape(params[:search])

      case search_by
      when 'title', 'cuisine', 'category', 'author'
        @recipes = Recipe.search(escaped_search, conditions: { search_by => params[:search] },
                                                    page: params[:page], per_page: 10)
      when 'ingredients'
        @recipes = Recipe.search("*#{escaped_search}*", page: params[:page], per_page: 10)
      end
    else
      @recipes = Recipe.page(params[:page]).per(10)
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end
end
