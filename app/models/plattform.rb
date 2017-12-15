class Plattform < ApplicationRecord
	has_many :taggings
	has_many :tags, through: :taggings, dependent: :destroy

	mount_uploader :image, ImageUploader

	def all_tags=(names)
      self.tags = names.split(",").map do |name|
      Tag.where(name: name.strip).first_or_create!
      end
    end

	def all_tags
	  self.tags.map(&:name).join(", ")
	end

	def self.tagged_with(name)
      Tag.find_by_name!(name).plattforms
    end

end
