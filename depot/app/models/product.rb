class Product < ActiveRecord::Base
	validates :title, :description, :image_url, presence: true
	#validates method is standard Rails validator
	#checks one or more model fields against one or more conditions
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :title, uniqueness: true
	validates :image_url, allow_blank: true, format: {
		with: %r{\.(gif|jpg|png)\Z}i,
		message: "must be a URL for a GIF, JPG, or PNG image"
	}
end
