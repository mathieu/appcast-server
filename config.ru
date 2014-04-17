# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)

if Rails.env.development?
  map '/appcast' do
    run AppcastServer::Application
  end
else
  run AppcastServer::Application
end