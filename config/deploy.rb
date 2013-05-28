# config/deploy.rb
require 'rvm/capistrano'  # Add Bundler integration
require 'bundler/capistrano'  # Add Bundler integration

load File.expand_path('../recipes/assets.rb', __FILE__)

set :rvm_type, :system
set :rvm_bin_path, "/usr/local/rvm/bin"
set :rvm_path, "/usr/local/rvm/"

set :application, "appcast"

# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "10.3.3.110"                          # Your HTTP server, Apache/etc
role :app, "10.3.3.110"                          # This may be the same as your `Web` server
role :db,  "10.3.3.110", :primary => true         # This is where Rails migrations will run

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end

set :scm, :git
set :repository, "git://github.com/mathieu/appcast-server.git"
set :branch, "master"

set :user, "deploy"
set :deploy_to, "/var/www/#{application}"
set :deploy_via, :remote_cache
set :use_sudo, false

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end