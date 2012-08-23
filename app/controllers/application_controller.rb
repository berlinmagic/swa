class ApplicationController < ActionController::Base
  protect_from_forgery
  
  layout proc { |controller| controller.request.xhr? ? false : 'application' }
  
  def after_sign_in_path_for(resource)
   root_path
  end
  
end
