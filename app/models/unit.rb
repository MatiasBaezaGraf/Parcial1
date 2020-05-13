class Unit < ApplicationRecord
	has_many :members

	validates :name, presence: true

	validate :memberAmount


	def memberAmount
	    amount = 0;

	    for i in Member.all

	        if (i.unit.id == self.id) 
	                amount = amount + 1
	        end

	    end

	    amount

	end

end