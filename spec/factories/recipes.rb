# frozen_string_literal: true

FactoryBot.define do
  factory :recipe do
    title { Faker::Food.dish }
    cook_time { rand(10..120) }
    prep_time { rand(10..60) }
    ratings { rand(0.0..5.0).round(1) }
    cuisine { Faker::Food.dish }
    category { ['Starter', 'Main Course', 'Dessert'].sample }
    author { Faker::Name.name }
    image { Faker::LoremFlickr.image(size: '50x60', search_terms: ['food']) }

    after(:create) do |recipe|
      create_list(:recipe_ingredient, 3, recipe:)
    end
  end
end
