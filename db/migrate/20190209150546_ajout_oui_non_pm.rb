class AjoutOuiNonPm < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :pmyn, :string #ajout dune colonne pour voir si ce message est un message prive ou non

#il faut que la case pmyn soit un oui
    add_column :conversations, :pm_id, :string #lid du message prive entre les deux utilisateurs correspond au rang du message et aux nombre de message total que les utilisateurs se sont envoyes jusqu'à présent.
  end
end
