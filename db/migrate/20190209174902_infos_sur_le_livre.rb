class InfosSurLeLivre < ActiveRecord::Migration[5.2]
  def change
      add_column :books, :full_name, :string #author
      add_column :books, :first_name, :string #author
      add_column :books, :last_name, :string #author
      add_column :books, :collection, :string #book #la collection du livre
      add_column :books, :edition, :string #book #l'éditeur /maison d'édition
      add_column :books, :genre, :string
      add_column :books, :date_of_publication, :string
      add_column :books, :id_author, :string
  end
end
