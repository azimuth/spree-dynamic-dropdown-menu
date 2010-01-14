class AddParentIdToMenus < ActiveRecord::Migration
  def self.up
    add_column :menus, :parent_id, :integer, :null => true, :default => :null
  end

  def self.down
    remove_column :menus, :parent_id
  end
end