class Tree < ActiveRecord::Base
	belongs_to :species

	before_filter :authenticate_user!, except: [:index, :show]

	geocoded_by :address
	after_validation :geocode, :if => :address_changed?

end
