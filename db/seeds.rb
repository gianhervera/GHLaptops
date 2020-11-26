require "csv"
require 'faker'
Product.delete_all
AdminUser.delete_all

if Rails.env.development?
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
 end

CSV.foreach(Rails.root.join('db/laptops.csv'), headers: true) do |row|
  p = Product.create( {
    product_id: row["product_id"],
    company: row["Company"],
    product: row["Product"],
    type_name: row["TypeName"],
    inches: row["Inches"],
    screen_resolution: row["ScreenResolution"],
    CPU: row["Cpu"],
    RAM: row["Ram"],
    memory: row["Memory"],
    GPU: row["Gpu"],
    price: row["Price_euros"],

  } )
  downloaded_image = URI.open("https://source.unsplash.com/600x600/?computer")
  p.image.attach(io: downloaded_image, filename: "m-computer.jpg")
 end


puts "Created #{Product.count}"


