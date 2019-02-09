class FormulationCreationCompte < ActiveRecord::Migration[5.2]
  def change
    create_table :comptes do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :password_confirm
      t.integer :date_of_birth
      t.string :specialty
    end
  end
end
