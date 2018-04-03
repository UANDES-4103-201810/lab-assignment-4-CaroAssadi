class User < ApplicationRecord
  	has_many :user_tickets	
	has_many :tickets, :through => :user_tickets
	validates :phone, length: { in: 9..12 } 
	validates :phone, numericality: true
	validates :password, length: { in: 8..12 } 
	validates :password, presence: true
	validates :email, presence: true
	validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i }
end
