class AddCharacterToMessages < ActiveRecord::Migration[6.1]
  def change
    add_reference :messages, :character, null: false, foreign_key: true
  end
end
