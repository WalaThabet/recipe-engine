class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  ThinkingSphinx::Callbacks.append(self, behaviours: [:real_time])
end
