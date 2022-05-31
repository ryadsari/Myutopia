class AddReferenceToChatrooms < ActiveRecord::Migration[6.1]
  def change
    add_reference :chatrooms, :character
  end
end
