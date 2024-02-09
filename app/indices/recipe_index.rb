# frozen_string_literal: true

ThinkingSphinx::Index.define :recipe, with: :real_time do
  # fields
  indexes title, sortable: true
  indexes cuisine
  indexes category
  indexes author
  indexes ingredients.name, as: :ingredient_names, type: :string
end
