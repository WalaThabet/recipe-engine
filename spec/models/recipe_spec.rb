# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Recipe, type: :model do
  it 'has a valid factory' do
    expect(build(:recipe)).to be_valid
  end

  describe 'associations' do
    it { should have_many(:recipe_ingredients) }
    it { should have_many(:ingredients).through(:recipe_ingredients) }
  end
end
