class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_filter :set_search

  def set_search
    @search_users = User.search(params[:q])
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) << [:title, :middle_name, :gender, :postcode,
                                                        :street, :town, :mobile_phone, :first_name, 
                                                        :last_name, :avatar, :about_me,
                                                        :available_private, :available_online,
                                                        :available_group]
    
    devise_parameter_sanitizer.for(:sign_up) << [:title, :postcode, :street,
                                                 :town, :first_name, :last_name, :about_me,
                                                 :available_private, :available_online, :available_group,
                                                 :latitude, :longitude, :formatted_address, :location,
                                                 :city, :country]
  end
end
