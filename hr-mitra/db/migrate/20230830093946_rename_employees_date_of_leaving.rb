class RenameEmployeesDateOfLeaving < ActiveRecord::Migration[5.2]
  def change
    rename_column :employees, :date_of_leaving, :last_date_of_work
  end
end
