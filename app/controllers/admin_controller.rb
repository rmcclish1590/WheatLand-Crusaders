class AdminController < SecuredController
  def login
    if request.post?
      user = User.authenticate(params[:name], params[:password])
      if user
        session[:user_id] = user.id
        uri = session[:original_uri]
        session[:original_uri] = nil
        redirect_to(uri || {:contorller => 'pages', :action => 'index'})
      else
        flash.now[:notice] = "Invalid username/password combination"
      end
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to(:controller => 'home', :action => 'index', :id => '1')
  end

end
