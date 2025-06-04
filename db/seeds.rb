puts "🌱 Resetting all data..."

Address.destroy_all
User.destroy_all
Company.destroy_all
Owner.destroy_all
Dog.destroy_all

puts "🌱 Seeding owners (primary DB)..."

3.times { |i| Owner.create!(name: "Owner ##{i + 1}") }

puts "🌱 Seeding dogs (secondary DB)..."

owners = Owner.all.to_a
raise "No owners found" if owners.empty?

5.times do |i|
  Dog.create!(name: "Dog ##{i + 1}", owner: owners.sample)
end

puts "🌱 Seeding users and companies with addresses..."

10.times do |i|
  user = User.create!(name: "User ##{i + 1}")
  user.create_address!(line: "User Address ##{i + 1}")
end

10.times do |i|
  company = Company.create!(name: "Company ##{i + 1}")
  company.create_address!(line: "Company Address ##{i + 1}")
end

puts "✅ Done!"
