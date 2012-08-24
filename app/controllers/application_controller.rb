class ApplicationController < ActionController::Base
  protect_from_forgery
  
  layout proc { |controller| controller.request.xhr? ? false : 'application' }
  
  helper_method :current_person, :get_person
  
private
  
  def after_sign_in_path_for(resource)
    person_path(current_user.person)
  end
  
  def current_person
    if current_user && current_user.person
      current_user.person
    else
      nil
    end
  end
  
  def get_person
    if params[:person_id]
      @person = Person.find( params[:person_id].split("-")[0].to_i )
    end
  end
  
end
