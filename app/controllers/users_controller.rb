class UsersController < ApplicationController
    before_action user_admin, only: [:index]
    protect_from_forgery
  def index
      @users = User.all
   end


    
end
