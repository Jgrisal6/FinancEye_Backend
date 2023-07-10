# == Schema Information
#
# Table name: expenses
#
#  id           :bigint           not null, primary key
#  expense_name :string
#  value        :float
#  date         :date
#  extra        :boolean
#  lender_id    :bigint           not null
#  category_id  :bigint           not null
#  currency_id  :bigint           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class ExpenseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
