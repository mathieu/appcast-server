# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary
# server in each group is considered to be the first
# unless any hosts have the primary property set.
# Don't declare `role :all`, it's a meta role
# role :app, %w{deploy@example.com}
# role :web, %w{deploy@example.com}
# role :db,  %w{deploy@example.com}


role :web, "10.3.3.110"
role :app, "10.3.3.110"
role :db,  "10.3.3.110", :primary => true 

set :rvm_type, :system
set :rvm_bin_path, "/usr/local/rvm/bin"
set :rvm_path, "/usr/local/rvm/"

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server
# definition into the server list. The second argument
# something that quacks like a hash can be used to set
# extended properties on the server.
server '10.3.3.110', user: 'deploy', roles: %w{web app db}, my_property: :my_value

set :branch, "master"
set :deploy_via, :remote_cache
