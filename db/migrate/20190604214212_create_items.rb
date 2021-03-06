class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :inventory, foreign_key: true
      t.string :name
      t.integer :str_bonus
      t.integer :dex_bonus
      t.integer :con_bonus
      t.integer :int_bonus
      t.integer :wis_bonus
      t.integer :cha_bonus
      t.text :description

      t.timestamps
    end
  end
end
