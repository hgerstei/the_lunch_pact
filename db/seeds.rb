# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# categories seed
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'categories.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Category.new
  t.category = row['category']
  t.sub_categories = row['sub_categories']
  t.photo_url = row['photo_url']
  t.lifespan = row['lifespan']
  t.refrigeration = row['refrigeration']
  t.storage_suggestions = row['storage_suggestions']
  t.save
  puts "#{t.category} saved"
end

puts "There are now #{Category.count} rows in the categories table"

# states seed
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'states.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = State.new
  t.category_id = row['category_id']
  t.stage1 = row['stage1']
  t.stage2 = row['stage2']
  t.stage3 = row['stage3']
  t.stage4 = row['stage4']
  t.save
  puts "#{t.category_id} saved"
end

puts "There are now #{State.count} rows in the states table"

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
