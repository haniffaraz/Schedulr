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
  specialty: "Pediatrics",
  img_url: "https://media.superpages.com/media/photos/03a5/70c0/4613/9fdc/e535/6fd2/2aaa/ad77/image/03a570c046139fdce5356fd22aaaad77.jpeg"
})

provider2 = Provider.create({
  name: "Dental Health Center",
  address: "11707 Jamaica Ave, Richmond Hill, NY, 11417",
  specialty: "Dental",
  img_url: "https://i4.ypcdn.com/blob/68ee2e511eaa80e00f1363fd166611f8aea5a7ac"
})

provider3 = Provider.create({
  name: "Plaza Park Dermatology",
  address: "26 Court St #1005, Brooklyn, NY 11242",
  specialty: "Dermatology",
  img_url: "https://static1.squarespace.com/static/575321cecf80a125f921e2d0/t/57c3bda346c3c4d923deef5f/1476237703256/hro-home-2500f.jpg?format=1500w"
})

provider4 = Provider.create({
  name: "Ballarat Podiatry Clinic",
  address: "1002 Lydlard St. Ballard North, 3350",
  specialty: "Podiatry",
  img_url: "https://s0.yellowpages.com.au/5db39927-0cd8-4a4a-95ab-c29e29eb4fd2/ballarat-podiatry-clinic-ballarat-north-3350-billboard-large.jpg"
})

provider5 = Provider.create({
  name: "Progressive Ophthalmology",
  address: "46-01 Queens Blvd, Sunnyside, NY 11104",
  specialty: "Ophthalmology",
  img_url: "http://www.sunnysideshines.org/sites/default/files/images/business/ophthalmology.jpg"
})

user1 = User.create({
  username: "FarazH",
  email: "hfaraz345@gmail.com",
  password: "123456"
})

slot1 = Slot.create({
  provider_id: provider1.id,
  title: "OPEN",
  start: "2018-07-30T10:00:00",
  end: "2018-07-30T11:00:00"
})

slot2 = Slot.create({
  provider_id: provider1.id,
  title: "OPEN",
  start: "2018-07-30T11:00:00",
  end: "2018-07-30T12:00:00"
})

slot3 = Slot.create({
  provider_id: provider1.id,
  title: "OPEN",
  start: "2018-07-30T13:00:00",
  end: "2018-07-30T14:00:00"
})

slot4 = Slot.create({
  provider_id: provider1.id,
  title: "OPEN",
  start: "2018-07-30T14:00:00",
  end: "2018-07-30T15:00:00"
})

slot5 = Slot.create({
  provider_id: provider1.id,
  title: "OPEN",
  start: "2018-07-30T15:00:00",
  end: "2018-07-30T16:00:00"
})

slot6 = Slot.create({
  provider_id: provider1.id,
  title: "OPEN",
  start: "2018-07-31T11:00:00" ,
  end: "2018-07-31T12:00:00"
})

slot7 = Slot.create({
  provider_id: provider1.id,
  title: "OPEN",
  start: "2018-07-31T13:00:00",
  end: "2018-07-31T14:00:00"
})

slot8 = Slot.create({
  provider_id: provider1.id,
  title: "OPEN",
  start: "2018-07-31T14:00:00",
  end: "2018-07-31T15:00:00"
})

slot9 = Slot.create({
  provider_id: provider1.id,
  title: "OPEN",
  start: "2018-08-01T13:00:00",
  end: "2018-08-01T14:00:00"
})

slot10 = Slot.create({
  provider_id: provider1.id,
  title: "OPEN",
  start: "2018-08-01T14:00:00" ,
  end: "2018-08-01T15:00:00"
})

slot11 = Slot.create({
  provider_id: provider1.id,
  title: "OPEN",
  start: "2018-08-01T15:00:00",
  end: "2018-08-01T16:00:00"
})

slot12 = Slot.create({
  provider_id: provider1.id,
  title: "OPEN",
  start: "2018-08-01T16:00:00",
  end: "2018-08-01T17:00:00"
})

slot13 = Slot.create({
  provider_id: provider1.id,
  title: "OPEN",
  start: "2018-08-02T11:00:00",
  end: "2018-08-02T12:00:00"
})

slot14 = Slot.create({
  provider_id: provider1.id,
  title: "OPEN",
  start: "2018-08-02T13:00:00" ,
  end: "2018-08-02T14:00:00"
})

slot15 = Slot.create({
  provider_id: provider1.id,
  title: "OPEN",
  start: "2018-08-02T14:00:00",
  end: "2018-08-02T15:00:00"
})

slot16 = Slot.create({
  provider_id: provider1.id,
  title: "OPEN",
  start: "2018-08-02T15:00:00",
  end: "2018-08-02T16:00:00"
})

slot17 = Slot.create({
  provider_id: provider1.id,
  title: "OPEN",
  start: "2018-08-03T13:00:00",
  end: "2018-08-03T14:00:00"
})

slot18 = Slot.create({
  provider_id: provider1.id,
  title: "OPEN",
  start: "2018-08-03T14:00:00" ,
  end: "2018-08-03T15:00:00"
})

slot19 = Slot.create({
  provider_id: provider1.id,
  title: "OPEN",
  start: "2018-08-03T15:00:00",
  end: "2018-08-03T16:00:00"
})

slot20 = Slot.create({
  provider_id: provider1.id,
  title: "OPEN",
  start: "2018-08-03T16:00:00",
  end: "2018-08-03T17:00:00"
})

slot21 = Slot.create({
  provider_id: provider2.id,
  title: "OPEN",
  start: "2018-07-30T10:00:00",
  end: "2018-07-30T11:00:00"
})

slot22 = Slot.create({
  provider_id: provider2.id,
  title: "OPEN",
  start: "2018-07-30T11:00:00" ,
  end: "2018-07-30T12:00:00"
})

slot23 = Slot.create({
  provider_id: provider2.id,
  title: "OPEN",
  start: "2018-07-30T13:00:00",
  end: "2018-07-30T14:00:00"
})

slot24 = Slot.create({
  provider_id: provider2.id,
  title: "OPEN",
  start: "2018-07-30T14:00:00",
  end: "2018-07-30T15:00:00"
})

slot25 = Slot.create({
  provider_id: provider2.id,
  title: "OPEN",
  start: "2018-07-30T15:00:00",
  end: "2018-07-30T16:00:00"
})

slot26 = Slot.create({
  provider_id: provider2.id,
  title: "OPEN",
  start: "2018-07-31T11:00:00" ,
  end: "2018-07-31T12:00:00"
})

slot27 = Slot.create({
  provider_id: provider2.id,
  title: "OPEN",
  start: "2018-07-31T13:00:00",
  end: "2018-07-31T14:00:00"
})

slot28 = Slot.create({
  provider_id: provider2.id,
  title: "OPEN",
  start: "2018-07-31T14:00:00",
  end: "2018-07-31T15:00:00"
})

slot29 = Slot.create({
  provider_id: provider2.id,
  title: "OPEN",
  start: "2018-08-01T13:00:00",
  end: "2018-08-01T14:00:00"
})

slot30 = Slot.create({
  provider_id: provider2.id,
  title: "OPEN",
  start: "2018-08-01T14:00:00" ,
  end: "2018-08-01T15:00:00"
})

slot31 = Slot.create({
  provider_id: provider2.id,
  title: "OPEN",
  start: "2018-08-01T15:00:00",
  end: "2018-08-01T16:00:00"
})

slot32 = Slot.create({
  provider_id: provider2.id,
  title: "OPEN",
  start: "2018-08-01T16:00:00",
  end: "2018-08-01T17:00:00"
})

slot33 = Slot.create({
  provider_id: provider2.id,
  title: "OPEN",
  start: "2018-08-02T11:00:00",
  end: "2018-08-02T12:00:00"
})

slot34 = Slot.create({
  provider_id: provider2.id,
  title: "OPEN",
  start: "2018-08-02T13:00:00" ,
  end: "2018-08-02T14:00:00"
})

slot35 = Slot.create({
  provider_id: provider2.id,
  title: "OPEN",
  start: "2018-08-02T14:00:00",
  end: "2018-08-02T15:00:00"
})

slot36 = Slot.create({
  provider_id: provider2.id,
  title: "OPEN",
  start: "2018-08-02T15:00:00",
  end: "2018-08-02T16:00:00"
})

slot37 = Slot.create({
  provider_id: provider2.id,
  title: "OPEN",
  start: "2018-08-03T13:00:00",
  end: "2018-08-03T14:00:00"
})

slot38 = Slot.create({
  provider_id: provider2.id,
  title: "OPEN",
  start: "2018-08-03T14:00:00" ,
  end: "2018-08-03T15:00:00"
})

slot39 = Slot.create({
  provider_id: provider2.id,
  title: "OPEN",
  start: "2018-08-03T15:00:00",
  end: "2018-08-03T16:00:00"
})

slot40 = Slot.create({
  provider_id: provider2.id,
  title: "OPEN",
  start: "2018-08-03T16:00:00",
  end: "2018-08-03T17:00:00"
})

slot41 = Slot.create({
  provider_id: provider3.id,
  title: "OPEN",
  start: "2018-07-30T10:00:00",
  end: "2018-07-30T11:00:00"
})

slot42 = Slot.create({
  provider_id: provider3.id,
  title: "OPEN",
  start: "2018-07-30T11:00:00" ,
  end: "2018-07-30T12:00:00"
})

slot43 = Slot.create({
  provider_id: provider3.id,
  title: "OPEN",
  start: "2018-07-30T13:00:00",
  end: "2018-07-30T14:00:00"
})

slot44 = Slot.create({
  provider_id: provider3.id,
  title: "OPEN",
  start: "2018-07-30T14:00:00",
  end: "2018-07-30T15:00:00"
})

slot45 = Slot.create({
  provider_id: provider3.id,
  title: "OPEN",
  start: "2018-07-30T15:00:00",
  end: "2018-07-30T16:00:00"
})

slot46 = Slot.create({
  provider_id: provider3.id,
  title: "OPEN",
  start: "2018-07-31T11:00:00" ,
  end: "2018-07-31T12:00:00"
})

slot47 = Slot.create({
  provider_id: provider3.id,
  title: "OPEN",
  start: "2018-07-31T13:00:00",
  end: "2018-07-31T14:00:00"
})

slot48 = Slot.create({
  provider_id: provider3.id,
  title: "OPEN",
  start: "2018-07-31T14:00:00",
  end: "2018-07-31T15:00:00"
})

slot49 = Slot.create({
  provider_id: provider3.id,
  title: "OPEN",
  start: "2018-08-01T13:00:00",
  end: "2018-08-01T14:00:00"
})

slot50 = Slot.create({
  provider_id: provider3.id,
  title: "OPEN",
  start: "2018-08-01T14:00:00" ,
  end: "2018-08-01T15:00:00"
})

slot51 = Slot.create({
  provider_id: provider3.id,
  title: "OPEN",
  start: "2018-08-01T15:00:00",
  end: "2018-08-01T16:00:00"
})

slot52 = Slot.create({
  provider_id: provider3.id,
  title: "OPEN",
  start: "2018-08-01T16:00:00",
  end: "2018-08-01T17:00:00"
})

slot53 = Slot.create({
  provider_id: provider3.id,
  title: "OPEN",
  start: "2018-08-02T11:00:00",
  end: "2018-08-02T12:00:00"
})

slot54 = Slot.create({
  provider_id: provider3.id,
  title: "OPEN",
  start: "2018-08-02T13:00:00" ,
  end: "2018-08-02T14:00:00"
})

slot55 = Slot.create({
  provider_id: provider3.id,
  title: "OPEN",
  start: "2018-08-02T14:00:00",
  end: "2018-08-02T15:00:00"
})

slot56 = Slot.create({
  provider_id: provider3.id,
  title: "OPEN",
  start: "2018-08-02T15:00:00",
  end: "2018-08-02T16:00:00"
})

slot57 = Slot.create({
  provider_id: provider3.id,
  title: "OPEN",
  start: "2018-08-03T13:00:00",
  end: "2018-08-03T14:00:00"
})

slot58 = Slot.create({
  provider_id: provider3.id,
  title: "OPEN",
  start: "2018-08-03T14:00:00" ,
  end: "2018-08-03T15:00:00"
})

slot59 = Slot.create({
  provider_id: provider3.id,
  title: "OPEN",
  start: "2018-08-03T15:00:00",
  end: "2018-08-03T16:00:00"
})

slot60 = Slot.create({
  provider_id: provider3.id,
  title: "OPEN",
  start: "2018-08-03T16:00:00",
  end: "2018-08-03T17:00:00"
})
