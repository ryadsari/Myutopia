class AddCategoryToChatrooms < ActiveRecord::Migration[6.1]
  def change
    add_column :chatrooms, :category, :string
  end
end
