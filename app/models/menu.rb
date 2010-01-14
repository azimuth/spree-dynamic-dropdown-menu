class Menu < ActiveRecord::Base
  acts_as_tree :order => "position"
  validates_presence_of :position
  validates_numericality_of :position
  
  validates_presence_of :link_text
  validates_presence_of :url
end
