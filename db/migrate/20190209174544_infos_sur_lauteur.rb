class InfosSurLauteur < ActiveRecord::Migration[5.2]
  def change
      add_column :authors, :last_name, :string
      t.string :first_name
      t.string :full_name
      t.integer :id_author
      t.integer :date_of_birth
      t.integer :date_of_death
      t.string :genre
      t.integer :nb_publications
    end
  end
end
