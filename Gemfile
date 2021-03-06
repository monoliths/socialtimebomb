source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # used to adddress local vars before rails app launches, ie .env file
  gem 'foreman'
end

group :development do

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# bootstrap for styling
gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'

# cool icons
gem 'font-awesome-rails'

# forms in vanilla rails are kinda poopy, this gem tries to fix that
gem 'simple_form'

# user managment made simpple
gem 'devise'

# allow authentication
gem 'dotenv-rails'
gem 'omniauth-twitter'
gem 'omniauth-facebook'

# gem to help with date validations
gem 'validates_timeliness', '~>3.0'

# datetime picker
gem 'datetimepicker-rails', github: 'zpaulovics/datetimepicker-rails', branch: 'master', submodules: true
gem 'momentjs-rails', '~> 2.9',  :github => 'derekprior/momentjs-rails'

# twitter and facebook direct posting
gem 'twitter'
gem 'koala'

# worker for our rails jobs
gem 'delayed_job_active_record'


# this is a small engine that allows us to track background jobs
gem 'delayed-web', github: 'thebestday/delayed-web'

# easily add pagination to our list of posts
gem 'will_paginate'

# use postgresql
gem 'pg'

# gem needed for heroku deployment
gem 'rails_12factor', group: :production


# specified ruby version for heroku
ruby "2.3.0"
