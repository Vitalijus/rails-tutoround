class UsersController < ApplicationController
	before_action :authenticate_user!, only: [:edit]
	respond_to :html

	def index
		# value is used by geocoder gem
		@location = params[:location]
		@distance = params[:distance]

		# checks if any User within specified location
	    @user_less_than_one = User.near(@location, @distance).length < 1 

		# looks for User within certain radius by geocoder
		# radius is specified by hidden field in search form
	    @search_users = User.near(@location, @distance).ransack(params[:q])

	    # ransack search filters results
	    # ransack multi-model search
	    @users = @search_users.result(distinct: true).includes(:tutors)

	    # if user does not specify location he gets a notice
	    if !@location.present?
	      	redirect_to root_url, notice: "Please specify you location in search field."

	     # if less than one User within specified location and distance gets notice
	    elsif @user_less_than_one
	    	redirect_to :back, notice: "Search successfully completed without new results. Try another settings."

	    else
	    	search_user(@users)
	    end
	end

	def show
		@user = User.find(params[:id])
	end

	def landing_page
		@users = User.all
	end

	private

    def search_user(users)
      @users = users
      @markers = Gmaps4rails.build_markers(@users) do |user, marker|
        #user_link = view_context.link_to "#{user.email}", user_path(user)
        marker.lat user.latitude
        marker.lng user.longitude
        #marker.infowindow "<h5><u>#{user_link}</u></h5> 
                         #<i>#{user.email}</i>"
        marker.picture({
          url: view_context.image_path("location.png"),
          width: 25,
          height: 38
          })
        marker.json({ link: "#{user_path(user)}"})
      end
    end
end