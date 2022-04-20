class UsersController < ApplicationController
    #get "/me"
    def show
        user = User.find_by_id(session[:user_id])
        byebug
        if user
            render json: user
        end
    end
end
