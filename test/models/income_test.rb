# == Schema Information
#
# Table name: incomes
#
#  id          :bigint           not null, primary key
#  source_name :string
#  value       :float
#  extra       :boolean
#  date        :date
#  currency_id :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class IncomeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
