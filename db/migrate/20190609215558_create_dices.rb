class CreateDices < ActiveRecord::Migration[5.2]
  def change
    create_table :dices do |t|
      t.string :name
      t.integer :sides
      t.references :diceable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
