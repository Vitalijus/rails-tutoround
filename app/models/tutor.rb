class Tutor < ActiveRecord::Base
	geocoded_by :address
	after_validation :geocode#, :if => :address_changed?

	def address
		[house_number, street, city, state, postcode, country].compact.join(', ')
	end

	def gmaps4rails_marker_picture
	    {
	      "rich_marker" =>  "<div class='my-marker'>It works!<img height='30' width='30' src='http://farm4.static.flickr.com/3212/3012579547_097e27ced9_m.jpg'/></div>"
	    }
	end
end
