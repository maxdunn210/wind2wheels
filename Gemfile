source 'https://rubygems.org'

ruby '2.0.0'
gem 'rails', '4.1.0'

gem 'thin'                # Use thin instead of Webrick,
                          # makes 'Could not determine content-length of response body' warnings disappear;
                          # also works with Heroku.

gem 'haml-rails'                    # Required for 'HAML' generator
gem 'bootstrap-sass', '~> 3.1.1.1'  # Remember to require bootstrap in application.js "//= require bootstrap"
gem 'sass-rails', '~> 4.0.3'
gem 'jquery-rails'                  # Use jquery as the JavaScript library
gem 'coffee-rails', '~> 4.0.0'      # Use CoffeeScript for .js.coffee assets and views
gem 'uglifier', '>= 1.3.0'          # Use Uglifier as compressor for JavaScript assets

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

gem 'devise'
gem 'cancan'

group :production do
  # (1) Find location of 'pg_config' file using => sudo find / -name 'pg_config'
  #     Response => /Library/PostgreSQL/9.0/bin/pg_config
  # (2) Install using => gem install pg -- --with-pg-config='PATH_TO_YOUR_PG_CONFIG'
  #     i.e., => gem install pg -- --with-pg-config='/Library/PostgreSQL/9.0/bin/pg_config'
  # (3) Restart => pg_ctl -D /usr/local/opt/postgres restart
  gem 'pg'
  gem 'rails_12factor'  # Heroku; to precompile assets
  gem 'rails_serve_static_assets'
end

group :development do
  gem 'sqlite3'                     # Use sqlite3 as the database for Active Record
  gem 'spring'                      # Spring speeds up development by keeping application running in the background.
                                    # Read more: https://github.com/rails/spring
  gem 'quiet_assets'                # This turns off assets logging in development mode.
end

group :test do
  gem 'rspec-rails'
  gem 'cucumber-rails', :require => false   # Use this version with Rails 3.1.x, not 'cucumber'
  gem 'capybara'
  gem 'selenium-webdriver' #http://stackoverflow.com/questions/6821659/cucumber-selenium-webdriver-how-to-use-google-chrome-as-the-testing-browser-i
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'spork'
  gem 'launchy'                           # So you can do 'Then show me the page'
  gem 'autotest'
  gem 'turn', :require => false           # Pretty printed test output
  gem 'minitest'
  # gem 'minitest', '=4.7.5'                # Version < 5.0 required to avoid Test:Unit conflict
  gem 'minitest-reporters', '>= 0.14.23'  # Required by RubyMine for 'minitest' gem
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

