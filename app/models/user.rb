class User < ActiveRecord::Base
  	# Carrierwave uplader
  	mount_uploader :avatar, AvatarUploader

  	# Include default devise modules. Others available are:
  	# :confirmable, :lockable, :timeoutable and :omniauthable
  	devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable

 	# Rails association User has_many <= Tutors
  	has_many :tutors, dependent: :destroy

  	# Geocoder geolocation
  	geocoded_by :address
  	after_validation :geocode#, :if => :address_changed? MAKE THIS WORK!!!!

  	# Aggregated string for geolocation
  	def address
	 	[street, postcode].compact.join(', ')
  	end
end
