class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :F_Name
      t.string :L_Name
      t.string :Department
      t.string :Adreess
      t.string :Mail_Id
      t.integer :Contact_No

      t.timestamps
    end
  end
end
