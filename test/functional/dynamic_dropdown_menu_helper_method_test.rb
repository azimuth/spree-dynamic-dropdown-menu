#require File.dirname(__FILE__) + '/../test_helper'
#require 'nokogiri'

#
#class DynamicDropdownMenuHelperMethodTest < Test::Unit::TestCase
#  pending
#  context "with no menus items" do
#   setup do
#     @menu = helper.dynamic_dropdown_menu()
#   end
# 
#   should "return nil" do
#     assert_nil @menu 
#   end
#  end
#
#  context "with menus items" do
#   setup do
#     @menus = [
#       a = Menu.create(:link_text => "foo", :url => "/foo", :position => 1),
#       b = Menu.create(:link_text => "bar", :url => "/foo/bar", :position => 1, :parent_id => a.id),
#       c = Menu.create(:link_text => "baz", :url => "/foo/baz", :position => 1, :parent_id => b.id)
#     ]
#   
#   end
# 
#   should "return valid xhtml" do
#     assert @fragment = Nokogiri::HTML.fragment(helper.dynamic_dropdown_menu())
#   end
#  end
#end
