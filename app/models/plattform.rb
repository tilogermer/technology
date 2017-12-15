# == Schema Information
#
# Table name: plattforms
#
#  id                 :integer          not null, primary key
#  name               :string
#  description        :text
#  owner              :string
#  account            :string
#  account_date_start :string
#  price              :decimal(, )
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image              :string
#  slug               :string
#

class Plattform < ApplicationRecord
	has_many :taggings
	has_many :tags, through: :taggings, dependent: :destroy

	mount_uploader :image, ImageUploader

	extend FriendlyId
      friendly_id :name, use: :slugged

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
