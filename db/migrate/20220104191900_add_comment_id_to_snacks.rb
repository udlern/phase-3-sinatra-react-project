class AddCommentIdToSnacks < ActiveRecord::Migration[6.1]
  def change
    add_column :snacks, :comment_id, :integer
  end
end
