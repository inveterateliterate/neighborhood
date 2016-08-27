class Restaurant < ApplicationRecord
	belongs_to :area
	belongs_to :category
	has_many :listings
	has_many :users, through: :listings

end
