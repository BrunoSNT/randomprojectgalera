class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :char_name
      t.text :background
      t.references :faction, foreign_key: true
      t.references :profession, foreign_key: true
      t.references :alignment, foreign_key: true
      t.references :user, foreign_key: true
      t.references :adventure, foreign_key: true
      t.integer :experience
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.integer :armor_class
      t.integer :initiative
      t.integer :hit_points

      t.timestamps
    end
  end
end
