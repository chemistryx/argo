source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'rails', '5.2.4.4'
gem 'mysql2', '~> 0.5.3'
gem 'figaro'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'rails-i18n', '~> 5.1'
gem 'tinymce-rails'
gem 'tinymce-rails-langs'
gem "font-awesome-rails"

gem 'devise', '~> 4.7', '>= 4.7.2'
gem 'devise-i18n'
gem 'cancancan'
gem 'rolify'
gem 'rails_admin'

gem 'haml', '~> 5.1', '>= 5.1.2'
gem 'simple_form', '~> 5.0', '>= 5.0.2'

# deploy
gem 'capistrano'
gem 'capistrano-bundler'
gem 'capistrano-passenger'
gem 'capistrano-rails'
gem 'capistrano-rbenv'
gem 'capistrano-rails-collection'
gem 'capistrano-figaro-yml'
gem 'capistrano-database-yml'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
