class AjoutDeChosesALaTableComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :content, :string
    add_column :comments, :user_id, :integer
    add_column :comments, :comment_id, :string
    add_column :comments, :sub_comment_id, :string
  end
end
