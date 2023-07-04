class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.string :expense_name
      t.float :value
      t.date :date
      t.boolean :extra
      t.references :lender, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.references :currency, null: false, foreign_key: true

      t.timestamps
    end
  end
end
