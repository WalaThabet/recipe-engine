# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RecipeIngredient, type: :model do
  it 'has a valid factory' do
    expect(build(:recipe_ingredient)).to be_valid
  end

  describe 'associations' do
    it { should belong_to(:recipe) }
    it { should belong_to(:ingredient) }
  end
end
