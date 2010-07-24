# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base 
  layout 'main_master'
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  before_filter :GetPages
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  def GetPages
    @page_list = Page.all
  end
end
