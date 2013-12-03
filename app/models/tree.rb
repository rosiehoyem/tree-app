class Tree < ActiveRecord::Base

	before_filter :authenticate_user!, except: [:index, :show]

	geocoded_by :address
	after_validation :geocode, :if => :address_changed?

end
