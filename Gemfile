source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.2'		  		# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'puma', '~> 3.11'		    		# Use Puma as the app server
gem 'sass-rails', '~> 5.0'			# Use SCSS for stylesheets
gem 'uglifier', '>= 1.3.0'			# Use Uglifier as compressor for JavaScript assets
gem 'jquery-rails'          			# Use jquery as the JavaScript library
gem 'materialize-sass'
gem 'twitter-bootstrap-rails'
gem 'bootstrap', '<= 4.3.1'
gem 'mini_racer', platforms: :ruby
gem 'coffee-rails', '~> 4.2'			# Use CoffeeScript for .coffee assets and views
gem 'turbolinks', '~> 5'	    		# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'jbuilder', '~> 2.5'	    		# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'bcrypt', '~> 3.1.7'	    		# Use ActiveModel has_secure_password

# gem 'redis', '~> 4.0'		    		# Use Redis adapter to run Action Cable in production
# gem 'mini_magick', '~> 4.8'			# Use ActiveStorage variant
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'bootsnap', '>= 1.1.0', require: false	# Reduces boot times through caching; required in config/boot.rb

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]	# Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'factory_bot_rails'
  gem 'rspec-rails'
end

group :development do
  gem 'sqlite3', '~> 1.3.6'	    			# Use sqlite3 as the database for Active Record
  gem 'web-console', '>= 3.3.0'				# Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'spring'					        # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'devise'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'				# Adds support for Capybara system testing and selenium driver
  gem 'chromedriver-helper'				# Easy installation and use of chromedriver to run system tests with Chrome
  gem 'selenium-webdriver'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'hirb'
