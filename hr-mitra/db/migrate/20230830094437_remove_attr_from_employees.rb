class RemoveAttrFromEmployees < ActiveRecord::Migration[5.2]
  def change
    remove_column :employees, :last_date_of_work, :string
  end
end
