class RemoveCommentIdColumnFromSnacks < ActiveRecord::Migration[6.1]
  def change
    remove_column :snacks, :comment_id, :integer
  end
end
