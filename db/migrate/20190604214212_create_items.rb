class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :inventory, foreign_key: true
      t.string :name
      t.integer :damage
      t.integer :bonus
      t.text :description

      t.timestamps
    end
  end
end
