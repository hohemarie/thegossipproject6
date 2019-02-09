class AjoutIdPotinAGossipEtComment < ActiveRecord::Migration[5.2]
  def change_comment
    add_column :comments, :id_potin, :integer
  end
  def change_gossip
    add_column :gossips, :id_potin, :integer
  end
end
