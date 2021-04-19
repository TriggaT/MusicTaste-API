class AuthController < ApplicationController
    # before_action :require_login, only: [:auto_login]

   
    
    def login
        user = User.find_by(username: params[:username])
        
        if user && user.authenticate(params[:password])
            payload = {user_id: user.id}
            token = encode_token(payload)
            render json: {user: user, jwt: token, success: "Welcome back, #{user.username}"}
        else
            render json: {failure: "Your username or password is incorrect"}
        end  
    end

    def auto_login
        if session_user
            render json: session_user
        else 
            render json: {errors: "No user is logged in. Make sure you're logged in."}
        end  
    end 

    def logged_in? 
        !!session_user
    end 

  

  
end