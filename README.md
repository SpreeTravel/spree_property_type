Spree::PropertyType
-------------------

Added a new model

 the properties now belongs_to: property_type
 
 Added a new concept PropertyTypePosition that has the next values
 
	 sidebar: To display in the sidebar
	 
	 bullets: to display the description below in the form of bullets
	 
	 Description: Displays the name and value
	 
 all property_type say where they are shows
 
 Default is a property_type [General] shown in the sidebar
 
 properties added to a [show_in_list] to know if this property is displayed in the list or not
 
 the [show_in_list] can have the following values
 
	 no: not shown in the list
	 
	 text: show a value
	 
	 image: show only image 
	 
	 Full: Displays value and image
	 
 Added the [show_in_details] like the [show_in_list]
 
 Added to an image properties
