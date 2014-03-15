require 'dotenv'

module Dotenv
  class Railtie < Rails::Railtie
    rake_tasks do
      desc 'Load environment settings from .env'
      task :dotenv do
        Dotenv.overload ".env.#{Rails.env}", '.env'
      end
    end
  end
end

Dotenv.overload ".env.#{Rails.env}", '.env'
