source 'http://rubygems.org'

gem 'rails', '3.1.0'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

# Use Haml for templates
gem 'haml'
# Use Ruby debugger
group :development, :test do
	gem 'ruby-debug19'
	# chapter 5 - BDD
	gem 'cucumber-rails'
	gem 'cucumber-rails-training-wheels' # some pre-fabbed step definitions
	gem 'database_cleaner' # to clear Cucumber's test database between runs
	gem 'capybara' # lets Cucumber pretend to be a web browser
	gem 'launchy' # a useful debugging aid for user stories
	# ---------------
end

gem 'ruby-tmdb'