puts "Creating companies..."
google = Company.create(name: "Google", founding_year: 1998)
facebook = Company.create(name: "Facebook", founding_year: 2004)
dm = Company.create(name: "Dunder Mifflin", founding_year: 2002)
enron = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
rick = Dev.create(name: "Rick")
morty = Dev.create(name: "Morty")
meseeks = Dev.create(name: "Mr. Meseeks")
gazor = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

portal_gun = Freebie.create(item_name: "Portal Gun", value: 24, dev_id: rick.id, company_id: google.id)
glowing_rocks = Freebie.create(item_name: "Glowing Rocks", value: 12, dev_id: morty.id, company_id: facebook.id)
empty_boxes = Freebie.create(item_name: "Empty Boxes", value: 32, dev_id: meseeks.id, company_id: dm.id)
iron_man_suit = Freebie.create(item_name: "Iron Man Suit", value: 100, dev_id: gazor.id, company_id: enron.id)

puts "Seeding done!"
