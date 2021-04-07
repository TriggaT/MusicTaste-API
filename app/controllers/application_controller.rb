class ApplicationController < ActionController::API
    def encode_token(payload)
        JWT.encode(payload, ENV['MY_SECRET'])
    end 
end
