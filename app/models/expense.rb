class Expense < ApplicationRecord
  belongs_to :lender
  belongs_to :category
  belongs_to :currency
end
