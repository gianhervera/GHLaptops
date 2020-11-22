ActiveAdmin.register Product do

permit_params :product_id, :company, :product, :type_name, :inches, :screen_resolution, :CPU, :RAM, :memory, :GPU, :images, :price

end
