# == Schema Information
#
# Table name: currencies
#
#  id            :bigint           not null, primary key
#  currency_name :string
#  description   :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Currency < ApplicationRecord
    has_many :incomes
    has_many :expenses
end
