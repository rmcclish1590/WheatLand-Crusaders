class SecuredController < ApplicationController
  before_filter :authorize, :except => [:login, :logout]
  layout 'admin_master'    
  protect_from_forgery :secret => 'ioj8923kijoisdjflkjvoivoijoaijf'
  
  def authorize
    unless User.find_by_id(session[:user_id])
      session[:original_uri] = request.request_uri
      flash[:notice] = "Please log in"
      redirect_to(:controller => 'admin', :action => 'login')
    end
  end
end
