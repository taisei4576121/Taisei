class UsersController < ApplicationController
    
    protect_from_forgery
  def index
      @users = User.all
   end


    
end
