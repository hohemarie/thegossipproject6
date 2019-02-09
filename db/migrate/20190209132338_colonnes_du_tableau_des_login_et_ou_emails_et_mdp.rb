class ColonnesDuTableauDesLoginEtOuEmailsEtMdp < ActiveRecord::Migration[5.2]
  def change
    create_table :loginsmdp do |t|
      t.string :identifiant
      t.string :motdepasse
      t.string :email
    end
  end
end
