class CreateWorlds < ActiveRecord::Migration[6.1]
  def change
    create_table :worlds do |t|
      t.string :name
      t.references :character, null: false, foreign_key: true
      t.references :chatroom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
