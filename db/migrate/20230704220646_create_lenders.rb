class CreateLenders < ActiveRecord::Migration[7.0]
  def change
    create_table :lenders do |t|
      t.string :first_name
      t.string :last_name
      t.integer :number_acount

      t.timestamps
    end
  end
end
