class AddColumnToSnacks < ActiveRecord::Migration[6.1]
  def change
    add_column :snacks, :picture, :string
  end
end
