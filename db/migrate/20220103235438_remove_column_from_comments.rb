class RemoveColumnFromComments < ActiveRecord::Migration[6.1]
  def change
    remove_column :comments, :commentor_name, :string
  end
end
