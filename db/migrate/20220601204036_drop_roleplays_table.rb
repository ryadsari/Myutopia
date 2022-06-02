class DropRoleplaysTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :roleplays
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
