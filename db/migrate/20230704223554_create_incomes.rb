class CreateIncomes < ActiveRecord::Migration[7.0]
  def change
    create_table :incomes do |t|
      t.string :source_name
      t.float :value
      t.boolean :extra
      t.date :date
      t.references :currency, null: false, foreign_key: true

      t.timestamps
    end
  end
end
