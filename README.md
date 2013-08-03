Spree::PropertyType
-------------------
* adiciona un nuevo modelo
* las properties ahora belongs_to :property_type
* adiciona un nuevo concepto PropertyTypePosition que tiene los siquientes valores
  - sidebar: Para mostrar en el sidebar
  - bullets: para mostrarlo debajo de la descripcion en forma de bullets
  - description: se muestra el name y el value
* todos los property_type dicen donde se muestran
* por defecto hay un property_type [General] que se muestra en el sidebar
* adiciona a las properties un campo [show_in_list] para saber si esa property se muestra en el listado o no
* el [show_in_list] puede tener los siguientes valores
  - no: no se muestra en el list
  - text: muestra el value
  - image: muestra solo la imagen
  - full: muestra value e imagen
* adiciona el campo [show_in_details] igual que el [show_in_list]
* adiciona a las properties una imagen
