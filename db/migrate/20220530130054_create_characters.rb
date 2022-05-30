class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :world
      t.string :race
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
