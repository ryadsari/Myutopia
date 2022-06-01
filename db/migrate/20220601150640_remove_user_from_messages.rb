class RemoveUserFromMessages < ActiveRecord::Migration[6.1]
  def change
    remove_reference :messages, :user
  end
end
