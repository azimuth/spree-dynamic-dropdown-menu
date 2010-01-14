class CreateMenus < ActiveRecord::Migration
  def self.up
    create_table :menus do |t|
      t.column :link_text, :string
      t.column :url, :string
      t.column :position, :integer
      t.column :visible, :boolean
    end
  end

  def self.down
    drop_table :menus
  end
end
