class RemoveEmployeeIdColumnFromComments < ActiveRecord::Migration[6.1]
  def change
    remove_column :comments, :employee_id, :integer
  end
end
