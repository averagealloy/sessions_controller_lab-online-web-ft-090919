class SessionsController < ApplicationController

def new 

end 

def create
    #2 
   return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty? #1
   #3 
   session[:name] = params[:name]
    redirect_to controller: 'application', action: 'hello'
   
end 

def destroy
    session.delete :name
    redirect_to '/login'
end 

end