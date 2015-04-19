class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter:authenticate_customer!
  	
  def after_sign_in_path_for(resource)
  "/customer/dashboard"
  end	

  #before_filter do |controller|
  #    redirect_to "/music_grocery/index"     
  #end
  
  #def after_sign_in_path_for(resource)
  #   current_customer
  #end


  #def after_sign_in_path_for(resource_or_scope)
  #    search_details
  #end


  #def after_sign_out_path_for(resource_or_scope)
      
  #end	

end
