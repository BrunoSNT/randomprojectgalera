class CreateNpcs < ActiveRecord::Migration[5.2]
  def change
    create_table :npcs do |t|

      t.timestamps
    end
  end
end
