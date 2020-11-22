ActiveAdmin.register Product do
permit_params :product_id, :company, :product, :type_name, :inches, :screen_resolution, :CPU, :RAM, :memory, :GPU, :images, :price
form do |f|
  f.semantic_errors
  f.inputs do
    f.input :company
    f.input :product
    f.input :type_name
    f.input :inches
    f.input :screen_resolution
    f.input :CPU
    f.input :RAM
    f.input :memory
    f.input :GPU
    f.input :price
    f.input :images, as: :file, hint: f.object.image.present? ? image_tag(f.object.image, size: "200x200") : ""
  end
  f.actions
end

end
