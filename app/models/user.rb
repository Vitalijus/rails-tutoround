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

  	# Geocoder reverse geolocation
    validates :location, presence: true    
    after_validation :reverse_geocode 
    reverse_geocoded_by :latitude, :longitude do |obj, results|
      if geo = results.first
        obj.city  = geo.city
        obj.location = geo.address
        obj.country = geo.country
      end
    end
end
