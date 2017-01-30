source 'https://rubygems.org'

#ruby '2.0.0'

gem 'rails', '3.2.20'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'


gem 'devise'

# https://github.com/seyhunak/twitter-bootstrap-rails
gem 'therubyracer', '~> 0.12.3'
gem 'less-rails', '~> 2.5.0' #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem 'twitter-bootstrap-rails', '~> 2.2.7'
gem 'bootstrap-datepicker-rails'
gem 'activeadmin', '= 0.5.1' # http://0.0.0.0:3000/admin
gem 'meta_search', '>= 1.1.0.pre'
gem 'friendly_id'
gem 'paperclip', '~> 3.5.4'
gem 'tinymce-rails', '~> 4.0.19'
gem 'figaro'
gem 'chartkick'
gem 'net-ssh', '~> 2.8.0'

group :development do
  gem 'awesome_print'
  gem 'better_errors', '1.1.0'  # http://0.0.0.0:3000/__better_errors
  gem 'binding_of_caller'
  gem 'meta_request', '0.2.1' # http://0.0.0.0:3000/rails/routes
  gem 'sextant'
  gem 'quiet_assets'
  gem 'thin'
  # deploy using capistrano
  gem 'capistrano', '~> 3.1.0', require: false
  gem 'capistrano-rails',   '~> 1.1', require: false
  gem 'capistrano-bundler', '~> 1.1', require: false
  # gem security scanner
  gem "brakeman", :require => false
  #gem 'groupdate', github: 'ankane/groupdate', branch: 'sqlite'
  gem 'sqlite3'

end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

group :production do
 gem 'groupdate'
 gem 'mysql2'
end

gem 'jquery-rails'
gem 'jquery-ui-rails'

gem 'impressionist'
