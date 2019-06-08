class CreateProfessions < ActiveRecord::Migration[5.2]
  def change
    create_table :professions do |t|
      t.string :name
      t.integer :str_bonus
      t.integer :dex_bonus
      t.integer :con_bonus
      t.integer :int_bonus
      t.integer :wis_bonus
      t.integer :cha_bonus

      t.timestamps
    end
  end
end
