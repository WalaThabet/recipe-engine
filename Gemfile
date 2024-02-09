# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.3.0'

# Rails
gem 'rails', '~> 7.0.8'
gem 'sprockets-rails' # Asset pipeline for Rails

# Database
gem 'mysql2' # MySQL
gem 'pg', '~> 1.1' # PostgreSQL

# Web Server
gem 'puma', '~> 5.0' # Puma web server

# Frontend
gem 'jsbundling-rails' # JavaScript bundling
gem 'react-rails' # React integration
gem 'stimulus-rails' # Hotwire's modest JavaScript framework
gem 'tailwindcss-rails', '~> 2.3' # Tailwind CSS
gem 'turbo-rails' # Hotwire's SPA-like page accelerator
gem 'webpacker' # Webpack integration

# API and Serialization
gem 'jbuilder' # JSON APIs
gem 'jsonapi-serializer' # JSON API serialization
gem 'kaminari' # Pagination

# Authentication
gem 'devise', '~> 4.9' # Devise authentication

# Search
gem 'flying-sphinx'
gem 'thinking-sphinx' # Sphinx search integration
# Redis (for Action Cable in production)
gem 'redis', '~> 4.0'

# Timezone data
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Performance
gem 'bootsnap', require: false # Reduces boot times

# Development and Test
group :development, :test do
  gem 'byebug', platform: :mri
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'pry'
  gem 'rspec-rails', '~> 3.5'
  gem 'rubocop'
  gem 'rubocop-capybara'
  gem 'rubocop-factory_bot'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
end

# Development only
group :development do
  gem 'dockerfile-rails', '>= 1.6'
  gem 'erb_lint'
  gem 'htmlbeautifier'
  gem 'letter_opener'
  gem 'web-console'
end

# Test only
group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'rails-controller-testing'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
end
