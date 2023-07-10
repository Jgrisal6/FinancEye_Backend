# == Schema Information
#
# Table name: lenders
#
#  id            :bigint           not null, primary key
#  first_name    :string
#  last_name     :string
#  number_acount :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
require "test_helper"

class LenderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
