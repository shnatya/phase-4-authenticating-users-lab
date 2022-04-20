class SessionsController < ApplicationController
    #post "/login"
    def create
        user = User.find_by(username: params[:username])
        session[:id] = user.id
        render json: user
        
    end
    #delete "/logout"
    def destroy
        session.delete :id
        head :no_content
    end
    
end
