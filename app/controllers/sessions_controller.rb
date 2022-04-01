class SessionsController < ApplicationController

    def new    
    end
    
    def create    
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            flash[:notice] = "Logged successfully."
            redirect_to user
        else  
            flash.now[:alert] = "Your email or password was incorrect."
            render 'new'
        end      
    end    
    
    def destroy
        session[:user_id] = nil 
        flash[:notice] = "You were logged out."
        redirect_to root_path
    end    

end     