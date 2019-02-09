class ColonnesDeCompte < ActiveRecord::Migration[5.2]
  def change
      add_column :comptes, :first_name, :string
      add_column :comptes, :last_name, :string
      add_column :comptes, :email, :string
      add_column :comptes, :password, :string
      add_column :comptes, :password_confirm, :string
      add_column :comptes, :date_of_birth, :integer
      add_column :comptes, :specialty, :string
  end
end
