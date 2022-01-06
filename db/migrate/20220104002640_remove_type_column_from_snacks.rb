class RemoveTypeColumnFromSnacks < ActiveRecord::Migration[6.1]
  def change
    remove_column :snacks, :type, :string
  end
end
