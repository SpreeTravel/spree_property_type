Deface::Override.new(
    :virtual_path => 'spree/products/show',
    :name => 'add_properties_below_description_in_product_show',
    :insert_after => "[data-hook='description']",
    :partial => "spree/products/enhanced_properties_in_right"
)
