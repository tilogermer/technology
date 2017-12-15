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

require 'test_helper'

class PlattformTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
