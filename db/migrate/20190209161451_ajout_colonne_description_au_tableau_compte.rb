class AjoutColonneDescriptionAuTableauCompte < ActiveRecord::Migration[5.2]
  def change
    add_column :comptes, :description, :text
  end
end
