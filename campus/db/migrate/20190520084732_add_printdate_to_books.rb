class AddPrintdateToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :print_date, :date
  end
end
