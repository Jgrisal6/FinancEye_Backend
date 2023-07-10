# == Schema Information
#
# Table name: categories
#
#  id            :bigint           not null, primary key
#  category_name :string
#  description   :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Category < ApplicationRecord
    has_many :expenses
end
