class CreateComptes < ActiveRecord::Migration[5.2]
  def change
    create_table :comptes do |t|

      t.timestamps
    end
  end
end
