class User < ActiveRecord::Base
  	# Carrierwave uploader
  	mount_uploader :avatar, AvatarUploader

  	# Include default devise modules. Others available are:
  	# :confirmable, :lockable, :timeoutable and :omniauthable
  	devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable

 	# Rails association User has_many <= Tutors and Emails
  	has_many :tutors, dependent: :destroy
    has_many :emails, dependent: :destroy

  	# Geocoder geolocation
  	geocoded_by :postcode
  	after_validation :geocode, :if => :postcode_changed?

  	# Aggregated string for geolocation
  	#def address
	 	#[street, postcode].compact.join(', ')
  	#end
end
