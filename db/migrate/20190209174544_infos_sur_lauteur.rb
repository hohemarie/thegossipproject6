class InfosSurLauteur < ActiveRecord::Migration[5.2]
  def change
      add_column :authors, :last_name, :string
      add_column :authors, :first_name, :string
      add_column :authors, :full_name, :string
      add_column :authors, :id_author, :integer
      add_column :authors, :date_of_birth, :integer
      add_column :authors, :date_of_death, :integer
      add_column :authors, :genre, :string
      add_column :authors, :nb_publications, :integer
  end
end
