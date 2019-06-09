class Item < ApplicationRecord
	mount_uploader :image, ImageUploader
	BRAND = %w{ Adidas Nike Joma Reebok Asics Other }
	COLOR = %w{ White Black Yellow Green Blue Navy }
	CONDITION = %w{ New Excellent Good Fair Poor }

	belongs_to :user

	validates :title, :brand, :price, presence: true
	validates :description, length: { maximum: 1000, too_long: "only %{count} characters are allowed" }
	validates :title, length: { maximum: 120, too_long: "only %{count} characters are allowed" }
	validates :price, numericality: { only_integer: true }
end
