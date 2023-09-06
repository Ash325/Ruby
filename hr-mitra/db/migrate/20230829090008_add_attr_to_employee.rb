class AddAttrToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :date_of_joining, :date
  end
end
