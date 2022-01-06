class AddColumnToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :employee_id, :integer
  end
end
