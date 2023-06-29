puts "Cleaning old database"
Room.destroy_all
Hotel.destroy_all

puts "Creating Hotels"
Hotel.create(name: "Hotel des près", address: "Rue des Lys")
Hotel.create(name: "Hotel du grand chacal", address: "Rue des prés")
Hotel.create(name: "Hotel de la ville", address: "Rue des Coquelicots")
Hotel.create(name: "Superhotel", address: "Rue des rues")

puts "Creating Rooms"
Room.create(price_per_night: 25, capacity: 2, hotel_id: 1)
Room.create(price_per_night: 50, capacity: 3, hotel_id: 2)
Room.create(price_per_night: 75, capacity: 4, hotel_id: 3)
Room.create(price_per_night: 100, capacity: 5, hotel_id: 4)
