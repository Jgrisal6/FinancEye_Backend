json.extract! expense, :id, :expense_name, :value, :date, :extra, :lender_id, :category_id, :currency_id, :created_at, :updated_at
json.url expense_url(expense, format: :json)
