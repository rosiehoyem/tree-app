class Species < ActiveRecord::Base
	has_many :trees

		validates :scientific_name, presence: true 

end
