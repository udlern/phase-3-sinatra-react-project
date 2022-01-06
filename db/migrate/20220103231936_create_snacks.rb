class CreateSnacks < ActiveRecord::Migration[6.1]
  def change
    create_table :snacks do |t|
      t.integer :employee_id
      t.integer :comment_id
      t.string :name
      t.string :type
      t.boolean :keto
      t.boolean :gluten_free
      t.boolean :vegetarian
      t.boolean :dairy_free
      t.boolean :nut_free
    end
  end
end
