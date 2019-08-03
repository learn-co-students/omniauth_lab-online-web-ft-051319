class SessionsController < ApplicationController

  def create
    # byebug can just use byebug instead of binding.pry
    if auth_hash = request.env['omniauth.auth'] #if there is a request.env
      @user = User.find_or_create_by(uid: auth_hash['uid']) do |u|
        u.name = auth_hash['info']['name']
        u.email = auth_hash['info']['email']
      end
      session[:user_id] = @user.id

    else
      @user = User.find_by(name: params[:name])
      session[:user_id] = @user.id
    end
  end



end
