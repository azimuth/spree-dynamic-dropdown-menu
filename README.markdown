Dynamic Dropdown Menu
=====================

Extension for creating client controllable dropdown menus.



Status
------

supports 3 levels of dropdown/popout

	MENU 1
	  SUBMENU 1
	    item1
	    SUBMENU 1
	      item1
	    item3
	  item1
	  item2

INSTALL
-------

* install this extension in the usual way
* `rake db:migrate`
* add css to your theme extension css files to theme a block such as this:

`
	  <ul>
	    <li class="headlink">
	      <a href="/">Home</a>
	    </li>
	    <li class="headlink">
	      <a href="/arbitrary">Arbitrary</a>
	      <ul>
		    <li><a href="/weird_stuff">Weird Stuff</a></li>
	        <li><a href="/more_wierd">More Weird Stuff</a></li>
	      </ul>
	    </li>
	    <li class="headlink">
	      <a href="/oddness">ODDNESS</a>
	      <ul>
		    	<li class="under_headlink">
				    <a href="/oddness/various">various</a>
				    <ul>
					    <li><a href="/oddness/various/1">3rd level Deep</a></li>
				    </ul>
				  </li>
		      <li><a href="/oddness/random">random</a></li>
	        <li><a href="/oddness/things">things</a></li>
	      </ul>
	    </li>
	  </ul>
`

* place your menu in your layout using the following helper code:

  `<%= dynamic_dropdown_menu %>`

* TODO: go to the admin and start creating menus
* WORKAROUND: open script/console and create the menus manually.

   `Menu.create :link_text => "blah", :url => "/blah", :position => 12, :visible => true, :parent_id => 3`

* TODO: add :visible to the `menus.find` call, so that the implied functionality actually exists:

`
     Given a valid, saved Menu instance with 'visible == true'
     When I go to a page with a dynamic_dropdown_menu() call
     Then the menu item should display
`
`
     Given a valid saved Menu instance with 'visible == false'
      When I go to a page with a dynamic_dropdown_menu() call
      Then the menu item should not display
`  
