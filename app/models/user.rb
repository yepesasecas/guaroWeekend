class User < ActiveRecord::Base
	validates :name, presence: true
	validates :email, presence: true
	validates :email, uniqueness: true
	validates :description, presence: true
end
