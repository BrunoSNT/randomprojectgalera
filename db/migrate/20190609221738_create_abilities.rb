class CreateAbilities < ActiveRecord::Migration[5.2]
  def change
    create_table :abilities do |t|
      t.string :name
      t.text :description
      t.integer :str_bonus
      t.integer :dex_bonus
      t.integer :con_bonus
      t.integer :int_bonus
      t.integer :wis_bonus
      t.integer :cha_bonus
      t.references :abilable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
