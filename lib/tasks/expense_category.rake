require 'roo'
namespace :expense_category do
  desc "Import categories from spreadsheet"
  task data: :environment do
    puts 'Importing Data'
    data = Roo::Spreadsheet.open('lib/expenses_category.xlsx')
    headers = data.row(1) # get header row
    data.each_with_index do |row, idx|
    next if idx == 0
  end

end
