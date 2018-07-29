# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
provider1 = Provider.create({
  name: "BMC",
  address: "126-01 Hillside Ave, Kew Gardens, NY, 11416",
  specialty: "Pediatric"
})

user1 = User.create({
  username: "FarazH",
  email: "hfaraz345@gmail.com",
  password: "123456"
})

slot1 = Slot.create({
  provider_id: provider1.id,
  user_id: user1.id,
  appointment_time: "10:00 AM",
  slot_duration_minutes: 60,
  date: 7,
  start_time: "10:00 AM",
  end_time: "11:00 AM"
})

slot2 = Slot.create({
  provider_id: provider1.id,
  user_id: user1.id,
  appointment_time: "12:00 PM",
  slot_duration_minutes: 60,
  date: 21,
  start_time: "12:00 PM",
  end_time: "1:00 PM"
})

slot3 = Slot.create({
  provider_id: provider1.id,
  user_id: user1.id,
  appointment_time: "1:00 PM",
  slot_duration_minutes: 60,
  date: 13,
  start_time: "1:00 PM",
  end_time: "2:00 PM"
})

slot4 = Slot.create({
  provider_id: provider1.id,
  user_id: user1.id,
  appointment_time: "5:00 PM",
  slot_duration_minutes: 60,
  date: 19,
  start_time: "5:00 PM",
  end_time: "6:00 PM"
})
