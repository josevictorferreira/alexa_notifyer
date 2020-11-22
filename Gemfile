# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rails', '~> 6.0.3', '>= 6.0.3.4'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'bootsnap', '>= 1.4.2', require: false

gem 'redis-namespace', '~> 1.7.0'

gem 'sidekiq', '~>6.0.2'

gem 'aldous', '~> 1.1.3'

gem 'rswag-api', '~> 2.3.1'
gem 'rswag-ui', '~> 2.3.1'

gem 'active_model_serializers', require: true


group :development, :test do
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'rubocop-performance', require: false
  gem 'dotenv-rails', '~> 2.7.6'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 4.0.1'
  gem 'factory_bot_rails', '~> 5.0.2'
  gem 'ffaker', '~> 2.2.0'
  gem 'shoulda-matchers', '~> 4.0'
  gem 'simplecov',  '~> 0.12.0'
  gem 'rswag-specs', '~> 2.3.1'
end

group :development do
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
