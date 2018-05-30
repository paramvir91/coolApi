module Coolapi
  module API
    class Health < Grape::API
      version 'v1', using: :header, vendor: 'coolAPI'
      resource :healthcheck do
        desc 'Retrive status of service'

        get do
          begin
            status 200
            "Up and running #{Coolapi::Utils.get_env} ..."
          end
        end
      end
    end
  end
end
