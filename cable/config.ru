require ::File.expand_path('../../config/environment',  __FILE__)  
Rails.application.eager_load!

#require 'action_cable/process/logging'

#ActionCable.server.config.allowed_request_origins = ["http://192.168.3.14:3000"]  
run ActionCable.server