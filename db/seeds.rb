puts "🌱 Seeding primary DB..."

Owner.destroy_all
3.times { |i| Owner.create!(name: "Owner ##{i + 1}") }

puts "🌱 Seeding secondary DB..."

Dog.destroy_all
owners = Owner.all.to_a

raise "No owners found" if owners.empty?

5.times do |i|
  Dog.create!(name: "Dog ##{i + 1}", owner_id: owners.sample.id)
end

puts "✅ Done!"
