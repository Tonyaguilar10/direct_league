
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Field.create(name: "Arena sports indoor", city: "wavre", street_name: "avenue pasteur", street_number: 2, zip_code: 1300, country: "belgium", telephone: 010454613, price: 6)

Field.create(name: "gohall", city: "liège", street_name: "rue du fourneau", street_number: 41, zip_code: 4030, country: "belgium", telephone: 0477822865, price: 7)

Field.create(name: "soccer city", city: "charleroi", street_name: "rue de la pépinière", street_number: 5, zip_code: 6041, country: "belgium", telephone: 071356356, price: 6)

Field.create(name: "foot club", city: "la louvière", street_name: "Chaussée Paul Houtart", street_number: 88, zip_code: 7110, country: "belgium", telephone: 064330555, price: 5)

Field.create(name: "fit five forest", city: "forest", street_name: "Rue de Lusambo", street_number: 36, zip_code: 1190, country: "belgium", telephone: 023320000, price: 6)

Field.create(name: "fit five", city: "bruxelles", street_name: "Rue Tielemans", street_number: 2, zip_code: 1020, country: "belgium", telephone: 024265555, price: 6)

Field.create(name: "fit five", city: "charleroi", street_name: "Rue Dourlet", street_number: 90, zip_code: 6000, country: "belgium", telephone: 071415555, price: 6)

User.destroy_all
Team.destroy_all
Membership.destroy_all
Field.destroy_all
Match.destroy_all

user_tony_captain = User.new(
  first_name: 'Tony',
  last_name: 'Aguilar',
  username: 'Tony10',
  email: 'tony@captain.com',
  gender: 'male',
  country: 'El Salvador',
  age: 29,
  zip_code: 503,
  password: "123456"
)
user_tony_captain.save!

user_pierrick_captain = User.new(
  first_name: 'Pierrick',
  last_name: 'Reille',
  username: 'PierOM',
  email: 'pierrick@captain.com',
  gender: 'male',
  country: 'france',
  age: 28,
  zip_code: 1000,
  password: "123456"
)
user_pierrick_captain.save!

user_jack_captain = User.new(
  first_name: 'Jack',
  last_name: 'Hanna',
  username: 'BigJack',
  email: 'jack@captain.com',
  gender: 'male',
  country: 'Siria',
  age: 25,
  zip_code: 1800,
  password: "123456"
)
user_jack_captain.save!

user_captain = User.new(
  first_name: 'Cristiano',
  last_name: 'Ronaldo',
  username: 'CR7_siuuu!',
  email: 'cr7@captain.com',
  gender: 'male',
  country: 'Portugal',
  age: 35,
  zip_code: 1500,
  password: "123456"
)
user_captain.save!

user_1 = User.new(
  first_name: 'Leonel',
  last_name: 'Messi',
  username: 'Messi10',
  email: 'messi@user.com',
  gender: 'male',
  country: 'Argentina',
  age: 35,
  zip_code: 1600,
  password: "123456"
)
user_1.save!

user_2 = User.new(
  first_name: 'Thibault',
  last_name: 'Courtois',
  username: 'GK_10',
  email: 'courtois@user.com',
  gender: 'male',
  country: 'Belgium',
  age: 32,
  zip_code: 1200,
  password: "123456"
)
user_2.save!

barca = Team.new(
  team_name: "Barcelona",
  team_banner: "https://s.yimg.com/ny/api/res/1.2/A3M.4xJzcYF9MF5hhVUtew--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD04MDA-/https://s.yimg.com/uu/api/res/1.2/HGSoqDPPToewZzjDEWqemg--~B/aD0yMzIyO3c9MzQ4NDthcHBpZD15dGFjaHlvbg--/http://media.zenfs.com/en/homerun/feed_manager_auto_publish_494/9ba9e4a129a8bc37c33f63ee407d3ff7",
  team_logo: "https://upload.wikimedia.org/wikipedia/fr/thumb/a/a1/Logo_FC_Barcelona.svg/1200px-Logo_FC_Barcelona.svg.png",
  country: "Spain",
  city: "Barcelona",
  zip_code: 8001,
  size: 5,
  user_id: user_jack_captain.id
)
barca.save!

om = Team.new(
  team_name: "Olympique de Marseille",
  team_banner: "https://www.footballclubdemarseille.fr/wp-content/uploads/2021/04/tifo-om-psg-franceschi.jpg",
  team_logo: "https://upload.wikimedia.org/wikipedia/fr/thumb/4/43/Logo_Olympique_de_Marseille.svg/1200px-Logo_Olympique_de_Marseille.svg.png",
  country: "France",
  city: "Marseille",
  zip_code: 13000,
  size: 5,
  user_id: user_pierrick_captain.id
)
om.save!

bvb = Team.new(
  team_name: "Bourrusia Dortmund",
  team_banner: "https://t1.ldh.be/It2RLGoOUt0ZqYWZmkcFGFHg0iA=/0x16:2560x1296/1920x960/5e9876629978e218336390fc.jpg",
  team_logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Borussia_Dortmund_logo.svg/1200px-Borussia_Dortmund_logo.svg.png",
  country: "Germany",
  city: "Dortmund",
  zip_code: 9500,
  size: 5,
  user_id: user_tony_captain.id
)
bvb.save!

rm = Team.new(
  team_name: "Real Madrid",
  team_banner: "https://i.pinimg.com/originals/fc/4e/23/fc4e2390742ec2e552961eb865865ae0.jpg",
  team_logo: "https://upload.wikimedia.org/wikipedia/fr/thumb/c/c7/Logo_Real_Madrid.svg/1200px-Logo_Real_Madrid.svg.png",
  country: "Spain",
  city: "Madrid",
  zip_code: 9700,
  size: 5,
  user_id: user_captain.id
)
rm.save!

