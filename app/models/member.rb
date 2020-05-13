class Member < ApplicationRecord
	has_one :director
	has_one :club, through: :director
	belongs_to :unit
	has_and_belongs_to_many :honors

	validates :first_name, :last_name, :birth_date, :document_number, presence: true
	validates :document_number, uniqueness: true
end
