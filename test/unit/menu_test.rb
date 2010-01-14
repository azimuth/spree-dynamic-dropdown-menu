require File.dirname(__FILE__) + '/../test_helper'

class MenuTest < Test::Unit::TestCase
  context "A Menu instance" do
    setup do 
      assert @menu = Menu.new(:visible => true, :link_text =>"home", :position => 1, :url => "/")
    end
    
    context "with no attributes" do
      should "not be valid" do
        assert(Menu.new.valid? == false)
      end
    end
    
    context "with an invalid position" do
      setup do
        @menu.position = "HoopyFrood"
      end
      
      should "not be valid" do
        assert(@menu.valid? == false)
      end
    end
    
    context "with invalid url" do
      setup do
        @menu.url = nil
      end
      
      should "not be valid" do
        assert(@menu.valid? == false)
      end
    end
    
    context "with no link_text" do
      setup do
        @menu.link_text = nil
      end
      
      should "not be valid" do
        assert(@menu.valid? == false)
      end
    end
    
    context "with valid attributes" do
      should "be valid" do
        assert @menu.valid?
      end
    end
    
    context "when parent is called" do
      context "without a parent id" do
        should "return nil" do
          assert @menu.parent == nil
        end
      end    
      context "with a parent id" do
        setup do
          @menu.parent_id = 2
          assert @menu.save!
          @menu_parent = Menu.new(:link_text => "away", :url => "/away", :visible => true, :position => 1)
        end
        should "return a Menu object" do
          @menu.parent.kind_of? Menu
        end
      end
    end
  end
end