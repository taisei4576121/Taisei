class Admin::TweetsController < ApplicationController
    before_action :if_not_admin
    before_action :set_tweet, only: [:new, :create, :edit]

    private
    def if_not_admin
        redirect_to root_path unless current_user.admin?
    end

    def set_tweet
        @tweet = Tweet.new
    end

    
end
