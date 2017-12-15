# == Schema Information
#
# Table name: taggings
#
#  id           :integer          not null, primary key
#  plattform_id :integer
#  tag_id       :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Tagging < ApplicationRecord
  belongs_to :plattform
  belongs_to :tag
end
