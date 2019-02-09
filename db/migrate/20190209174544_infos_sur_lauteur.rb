class InfosSurLauteur < ActiveRecord::Migration[5.2]
  def change
      add_column :authors, :last_name, :string
      add_column :authors, :first_name, :string
      add_column :authors, :full_name, :string
      add_column :authors, :id_author, :integer
       :date_of_birth
      t.integer :date_of_death
      t.string :genre
      t.integer :nb_publications
  end
end
