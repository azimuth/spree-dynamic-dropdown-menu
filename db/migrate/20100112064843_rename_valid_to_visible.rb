class RenameValidToVisible < ActiveRecord::Migration
  def self.up
    rename_column :menus, :valid, :visible
  end

  def self.down
    rename_column :menus, :visible, :valid
  end
end