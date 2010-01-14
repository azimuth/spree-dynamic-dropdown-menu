require File.dirname(__FILE__) + '/../test_helper'

class DynamicDropdownMenuExtensionTest < Test::Unit::TestCase
  
  def test_initialization
    assert_equal File.join(File.expand_path(RAILS_ROOT), 'vendor', 'extensions', 'dynamic_dropdown_menu'), DynamicDropdownMenuExtension.root
    assert_equal 'Dynamic Dropdown Menu', DynamicDropdownMenuExtension.extension_name
  end
  
end

