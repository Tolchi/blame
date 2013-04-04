source 'https://rubygems.org'

gem 'rails', '3.2.13'

gem 'sass-rails',   '~> 3.2.3'
gem 'bootstrap-sass', '~> 2.3.0.1'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger

group :test, :development do
	gem 'rspec-rails'
	gem 'debugger'
	gem 'sqlite3'
end

group :test do
	gem 'factory_girl_rails'
	gem 'guard-rspec'
	gem 'capybara_rails'

	# Guard-rspec dependencies 
	# on linux 
	gem 'rb-inotify', :require => false
	#
	# on mac
	gem 'rb-fsevent', :require => false
end

gem 'haml', '>= 4.0.0'
gem 'haml-rails', '>= 0.4.0'

group :production do 
  gem 'pg'
end
