source 'https://rubygems.org'

ruby '2.3.4'

gem 'rails', '>= 3.2'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'


gem 'devise'

# https://github.com/seyhunak/twitter-bootstrap-rails
gem 'therubyracer', '~> 0.12.3'
gem 'less-rails', '~> 2.5.0' #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem 'twitter-bootstrap-rails', '~> 2.2.7'
gem 'bootstrap-datepicker-rails'
gem 'activeadmin', '>= 0.6.6' # http://0.0.0.0:3000/admin
gem 'bourbon', '~> 3.1.8' # failure to find mixin box-shadow
gem 'meta_search', '>= 1.1.0.pre'
gem 'friendly_id'
gem 'paperclip', "~> 4.3.7"
gem 'figaro', "= 0.7.0"
gem 'chartkick'
gem 'net-ssh', '~> 2.8.0'
gem 'redcarpet', '~> 3.4.0'

group :development do
  gem 'awesome_print'
  gem 'better_errors', '1.1.0'  # http://0.0.0.0:3000/__better_errors
  gem 'binding_of_caller'
  gem 'meta_request', '0.2.1' # http://0.0.0.0:3000/rails/routes
  gem 'sextant'
  gem 'quiet_assets'
  gem 'thin'
  # deploy using capistrano
  gem 'capistrano', '~> 3.9.1', require: false
  gem 'capistrano-rvm', require: false
  gem 'capistrano-rails',   '~> 1.3.0', require: false
  gem 'capistrano-bundler', '~> 1.3.0', require: false
  # gem security scanner
  gem "brakeman", :require => false
  #gem 'groupdate', github: 'ankane/groupdate', branch: 'sqlite'
  gem 'sqlite3'

end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.6'
  gem 'coffee-rails', '~> 3.2.2'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

group :production do
 gem 'groupdate'
 gem 'mysql2', "~> 0.3.11"
end

gem 'jquery-rails', '>= 3.1.3'
gem 'jquery-ui-rails', '~> 4.2.0'

gem 'impressionist', '= 1.5.2'
