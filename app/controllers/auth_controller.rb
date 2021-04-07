class AuthController < ApplicationController
    

  def login
      user = User.find_by(username: params[:username])
      if user && user.authenticate(params[:user][:password])
        payload = {user_id: user.id}
        token = encode_token(payload)
        render json: {user: user, jwt: token, success: "Welcome back, #{user.username}"}
      else
        render json: {failure: "Your username or password is incorrect"}
      end  
  end
  
  

  
end