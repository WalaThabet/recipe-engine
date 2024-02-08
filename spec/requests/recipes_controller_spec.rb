# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Recipes', type: :request do
  let(:user) { create(:user) }
  let!(:recipes) { create_list(:recipe, 12) }

  describe 'GET /recipes' do
    context 'when user is authenticated' do
      before { sign_in user }

      it 'paginates the recipes' do
        get recipes_path
        expect(assigns(:recipes).length).to eq(10)
      end

      context 'with search parameters' do
        let(:searched_recipe) { create(:recipe, title: 'UniqueTitle') }

        it 'returns filtered results for title search' do
          get recipes_path, params: { search: 'UniqueTitle', search_by: 'title' }
          expect(response.body).to include(searched_recipe.title)
        end
      end
    end

    context 'when user is not authenticated' do
      it 'redirects to the login page' do
        get recipes_path
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end

  describe 'GET /recipes/:id' do
    context 'when user is authenticated' do
      before { sign_in user }

      context 'with a valid recipe id' do
        let(:recipe) { recipes.first }

        it 'responds successfully and renders the show view' do
          get recipe_path(recipe)
          expect(response).to have_http_status(:ok)
          expect(response.body).to include(recipe.title)
        end
      end

      context 'with an invalid recipe id' do
        it 'responds with not found' do
          get recipe_path('non-existent')
          expect(response).to have_http_status(:not_found)
        end
      end
    end

    context 'when user is not authenticated' do
      let(:recipe) { recipes.first }

      it 'redirects to the login page' do
        get recipe_path(recipe)
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end
end
