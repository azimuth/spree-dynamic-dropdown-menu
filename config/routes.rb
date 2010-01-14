map.namespace :admin do |admin|
  admin.resources :menus, :has_many => :sub_items
end
