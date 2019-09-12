class SessionsController < ApplicationController
  
  def new
   @user = User.new
  end
  
  def create
  
  end
  
  def destroy
    binding.pry
    session.delete :user_id
    redirect_to root_url
  end


end
