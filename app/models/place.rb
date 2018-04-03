class Place < ApplicationRecord
	has_many :events
	validates :name, length: { minimum: 20 }
	validates :name, presence: true
	validates :capacity, presence: true
	validates :capacity, numericality: { only_integer: true }
	validates :capacity, numericality: { greater_than: 0 }
end
