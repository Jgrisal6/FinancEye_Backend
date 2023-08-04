class AddNewLenderToExpenses < ActiveRecord::Migration[7.0]
  def change
    add_column :expenses, :new_lender, :string
  end
end
