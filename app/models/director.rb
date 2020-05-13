class Director < ApplicationRecord
	belongs_to :member
	has_one :club
end
