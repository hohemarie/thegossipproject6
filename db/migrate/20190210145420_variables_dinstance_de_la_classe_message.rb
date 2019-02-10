class VariablesDinstanceDeLaClasseMessage < ActiveRecord::Migration[5.2]
  def change
      add_column :messages, :text, :string
      add_column :messages, :title, :string
      add_column :messages, :sender, :string
      add_column :messages, :date_denvoi, :string
  end
end
