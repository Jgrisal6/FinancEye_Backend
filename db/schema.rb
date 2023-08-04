# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_08_03_225631) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "category_name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "currencies", force: :cascade do |t|
    t.string "currency_name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expenses", force: :cascade do |t|
    t.string "expense_name"
    t.float "value"
    t.date "date"
    t.boolean "extra"
    t.bigint "lender_id", null: false
    t.bigint "category_id", null: false
    t.bigint "currency_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "new_lender"
    t.index ["category_id"], name: "index_expenses_on_category_id"
    t.index ["currency_id"], name: "index_expenses_on_currency_id"
    t.index ["lender_id"], name: "index_expenses_on_lender_id"
  end

  create_table "incomes", force: :cascade do |t|
    t.string "source_name"
    t.float "value"
    t.boolean "extra"
    t.date "date"
    t.bigint "currency_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["currency_id"], name: "index_incomes_on_currency_id"
  end

  create_table "lenders", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "number_acount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "expenses", "categories"
  add_foreign_key "expenses", "currencies"
  add_foreign_key "expenses", "lenders"
  add_foreign_key "incomes", "currencies"
end
