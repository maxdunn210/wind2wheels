source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.0'

group :production do
  # (1) Find location of 'pg_config' file using => sudo find / -name 'pg_config'
  #     Response => /Library/PostgreSQL/9.0/bin/pg_config
  # (2) Install using => gem install pg -- --with-pg-config='PATH_TO_YOUR_PG_CONFIG'
  #     i.e., => gem install pg -- --with-pg-config='/Library/PostgreSQL/9.0/bin/pg_config'
  # (3) Restart => pg_ctl -D /usr/local/opt/postgres restart
  gem 'pg'
  gem 'rails_12factor'
end

gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views


gem 'thin'                # Use thin instead of Webrick,
                            # makes 'Could not determine content-length of response body' warnings disappear;
                            # also works with Heroku.

gem 'haml-rails'                    # Required for 'HAML' generator
gem 'bootstrap-sass', '~> 3.1.1.1'  # Remember to require bootstrap in application.js "//= require bootstrap"
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc



# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

group :development do

  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'quiet_assets'  # This turns off assets logging in development mode.
end