class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :commentor_name
      t.string :comment_content
    end
  end
end
