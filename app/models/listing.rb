class Listing < ApplicationRecord
	belongs_to :user
	belongs_to :restaurant
	belongs_to :card
end
