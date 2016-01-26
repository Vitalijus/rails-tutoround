class UsersController < ApplicationController
	before_action :authenticate_user!, only: [:edit]
	respond_to :html
	def index
		# value is used by geocoder gem
		@location = params[:location]

		# looks for User within 5km radius by geocoder
	    @search_users = User.near(@location, 5).ransack(params[:q]) 

	    # checks if any User within specified location
	    @user_less_than_one = User.near(@location, 5).length < 1 

	    if !@location.present? && !params[:q]
	      @users = User.all
	    elsif !@location.present? && params[:q]
	      @ransack = User.ransack(params[:q])
	      @users = @ransack.result(distinct: true)
	    elsif !@user_less_than_one
	      @users = @search_users.result(distinct: true)
	    else
	      @users = User.all
	    end

	    search_user(@users)
	    respond_with(@users)
	end

	def show
		@user = User.find(params[:id])
	end

	private

    def search_user(users)
      @users = users
      @markers = Gmaps4rails.build_markers(@users) do |user, marker|
        user_link = view_context.link_to "#{user.email}", user_path(user)
        marker.lat user.latitude
        marker.lng user.longitude
        marker.infowindow "<h5><u>#{user_link}</u></h5> 
                         #<i>#{user.email}</i>"
        marker.picture({
          url: view_context.image_path("marker.png"),
          #url: "http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=Abvdfr|FF0000|000000",
          width: 10,
          height: 10,
          #rich_marker: "<div style: width: 25px; height: 25px; background-color: red;>Hello</div>"
          })
        marker.json({ link: "#{user_path(user)}"})
      end
    end
end