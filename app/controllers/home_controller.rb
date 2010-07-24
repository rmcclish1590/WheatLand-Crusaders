class HomeController < ApplicationController
  def index
    id = params[:id]
    if !id
      id = '1'
    end     
      @page = Page.find(id)
      
      respond_to do |format|
        format.html
        format.xml { render :xml => @page}
      end  
   
  end

  def registration
    
  end
  
  def contact
    
  end
  
  def gratitude
    @donators = Donator.all
  end
end
