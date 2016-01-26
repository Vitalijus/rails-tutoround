class TutorsController < ApplicationController
  before_action :set_tutor, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tutors = Tutor.all
  end

  def new
    @tutor = Tutor.new
    respond_with(@tutor)
  end

  def edit
  end

  def create
    @tutor = Tutor.new(tutor_params)
    current_user.tutors << @tutor
    @tutor.save
    respond_with(@tutor)
  end

  def update
    @tutor.update(tutor_params)
    respond_with(@tutor)
  end

  def destroy
    @tutor.destroy
    respond_with(@tutor)
  end

  private

    def search_tutor(tutors)
      @tutors = tutors
      @markers = Gmaps4rails.build_markers(@tutors) do |tutor, marker|
        tutor_link = view_context.link_to "#{tutor.name}", tutor_path(tutor)
        marker.lat tutor.latitude
        marker.lng tutor.longitude
        marker.infowindow "<h5><u>#{tutor_link}</u></h5> 
                         #<i>#{tutor.street}</i>"
        marker.picture({
          url: view_context.image_path("marker.png"),
          #url: "http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=Abvdfr|FF0000|000000",
          width: 10,
          height: 10,
          #rich_marker: "<div style: width: 25px; height: 25px; background-color: red;>Hello</div>"
          })
        marker.json({ link: "#{tutor_path(tutor)}"})
      end
    end

    def set_tutor
      @tutor = Tutor.find(params[:id])
    end

    def tutor_params
      params.require(:tutor).permit(:name, :surname, :postcode, :latitude, :longitude,
                                    :house_number, :street, :city, :state, :country,
                                    :price_per_hour, :avatar, :about_me, :qualification,
                                    :availability, :experience, :tutoring_type, :subject)
    end
end
