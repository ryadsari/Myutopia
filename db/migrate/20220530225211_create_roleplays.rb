class CreateRoleplays < ActiveRecord::Migration[6.1]
  def change
    create_table :roleplays do |t|
      t.integer :length
      t.references :character, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
