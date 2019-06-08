class CreateInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :inventories do |t|
      t.references :character, foreign_key: true
      t.integer :gold
      t.integer :silver
      t.integer :copper

      t.timestamps
    end
  end
end
