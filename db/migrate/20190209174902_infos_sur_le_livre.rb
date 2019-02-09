class InfosSurLeLivre < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :full_name #author
      t.string :first_name #author
      t.string :last_name #author
      t.string :collection #book #la collection du livre
      t.string :edition #book #l'éditeur /maison d'édition
      t.string :genre
      t.integer :date_of_publication
      t.integer :id_author
    end
  end
end
