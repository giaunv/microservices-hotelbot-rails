class Hotel < ActiveRecord::Base
	has_many :comments

	validates :name, presence: true, length: {minimum:5, maximum: 100}
	validates :image, presence: true, length: {minimum:5, maximum: 100}
	validates :address, presence: true, length: {minimum:2, maximum: 100}
end
