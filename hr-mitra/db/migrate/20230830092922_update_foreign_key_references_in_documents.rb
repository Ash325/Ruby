class UpdateForeignKeyReferencesInDocuments < ActiveRecord::Migration[5.2]
    def change
      change_column :documents, :employee_id, :integer, foreign_key: { to_table: :employees, on_delete: :cascade }
    end
end
