class ChampsDuFormulaireDeCreationDunCompte < ActiveRecord::Migration[5.2]
  def change
    create_table :formulaire_creation_compte do |t|
      t.string :name
      t.integer :year_of_birth
      t.string :last_name
      t.string :first_name
      t.string :email
      t.string :identifiant
      t.string :motdepasse
      t.string :motdepasse_confirmation
    end
  end
end
