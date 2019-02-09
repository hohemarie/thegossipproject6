class TableauLikeColonnes < ActiveRecord::Migration[5.2]
  def change
      add_column :likes, :id_potin, :integer
      add_column :likes, :user_id, :integer
  end
end
