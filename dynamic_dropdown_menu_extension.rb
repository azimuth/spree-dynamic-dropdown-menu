# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class DynamicDropdownMenuExtension < Spree::Extension
  version "0.1"
  description "Client controllable dropdown menus"
  url "github azimuth dynamic_dropdown_menu"

  def self.require_gems(config)
    config.gem "shoulda", :version => '2.10.2'
  end
  
  def activate
    Spree::BaseController.class_eval do
      helper_method :dynamic_dropdown_menu

      
      def dynamic_dropdown_menu
        @menus = [ Menu.find_by_parent_id(0, :order => "position ASC") ]
        raise("Unable to find any menus") unless @menus.length > 0
        
        template = ERB.new(File.read(File.expand_path(ddmenu_absolute_template_path)), nil, '-')
        template.result(binding)
      end

      private

      def ddmenu_absolute_template_path
        absolute_path = ""
        [SPREE_ROOT, RAILS_ROOT].each do |r|
          logger.debug "DDMENU: root is #{r}"
          absolute_path = "#{r}#{ddmenu_template_path}"
          logger.debug "absolute_path is #{absolute_path}"
          if File.exists?(absolute_path)
            return absolute_path
          end
        end

        raise("Unable to find ddmenu template using path '#{absolute_path}'")
      end

      def ddmenu_template_path
        return "/vendor/extensions/dynamic_dropdown_menu/app/views/menu/_ddmenu.html.erb"
      end
    end  
     
  end
end