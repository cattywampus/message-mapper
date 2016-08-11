# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product = Product.find_or_create_by name: "Program A" do |product|
  product.description = "My Program/Product"
end

baseline = Baseline.find_or_create_by name: "Build Z" do |baseline|
  baseline.product = product
end

Message.find_or_create_by msg_id: "12345" do |message|
  message.description = "This is a test message"
  message.baseline = baseline
end

Application.find_or_create_by name: "App 1" do |application|
  application.baseline = baseline
  application.description = "Application running in this baseline"
end
