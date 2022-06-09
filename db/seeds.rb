Request.destroy_all
Match.destroy_all
Membership.destroy_all
Contract.destroy_all
Team.destroy_all
User.destroy_all
Field.destroy_all

Field.create(name: "Arena sports indoor", city: "wavre", street_name: "avenue pasteur", street_number: 2, zip_code: 1300, country: "belgium", telephone: "010454613", price: 6)

Field.create(name: "gohall", city: "liège", street_name: "rue du fourneau", street_number: 41, zip_code: 4030, country: "belgium", telephone: "0477822865", price: 7)

Field.create(name: "soccer city", city: "charleroi", street_name: "rue de la pépinière", street_number: 5, zip_code: 6041, country: "belgium", telephone: "071356356", price: 6)

Field.create(name: "foot club", city: "la louvière", street_name: "Chaussée Paul Houtart", street_number: 88, zip_code: 7110, country: "belgium", telephone: "064330555", price: 5)

Field.create(name: "fit five forest", city: "forest", street_name: "Rue de Lusambo", street_number: 36, zip_code: 1190, country: "belgium", telephone: "023320000", price: 6)

Field.create(name: "fit five bruxelles", city: "bruxelles", street_name: "Rue Tielemans", street_number: 2, zip_code: 1020, country: "belgium", telephone: "024265555", price: 6)

Field.create(name: "fit five charleroi", city: "charleroi", street_name: "Rue Dourlet", street_number: 90, zip_code: 6000, country: "belgium", telephone: "071415555", price: 6)


user_tony_captain = User.new(
  first_name: 'Tony',
  last_name: 'Aguilar',
  username: 'Tony10',
  email: 'tony@gmail.com',
  gender: 'male',
  country: 'El Salvador',
  age: 29,
  zip_code: 503,
  password: "123456",
  avatar: "https://res.cloudinary.com/tony-thunder-cloud/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1654771794/Direct-league/20220608_184910_aiurfj.jpg"
)
user_tony_captain.save!

user_pierrick_captain = User.new(
  first_name: 'Pierrick',
  last_name: 'Reille',
  username: 'PierOM',
  email: 'pierrick@gmail.com',
  gender: 'male',
  country: 'France',
  age: 28,
  zip_code: 1000,
  password: "123456",
  avatar: "https://res.cloudinary.com/tony-thunder-cloud/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1654771794/Direct-league/20220608_184744_iiuyph.jpg"
)
user_pierrick_captain.save!

user_jack_captain = User.new(
  first_name: 'Jack',
  last_name: 'Hanna',
  username: 'BigJack',
  email: 'jack@gmail.com',
  gender: 'male',
  country: 'Siria',
  age: 25,
  zip_code: 1800,
  password: "123456",
  avatar: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1649341017/umfeigm9dpiagzyctwer.jpg"
)
user_jack_captain.save!

user_captain = User.new(
  first_name: 'Archie',
  last_name: 'Saen',
  username: 'ArchieBoy',
  email: 'archie@gmail.com',
  gender: 'male',
  country: 'Belgium',
  age: 35,
  zip_code: 1500,
  password: "123456",
  avatar: "https://res.cloudinary.com/tony-thunder-cloud/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1654771793/Direct-league/20220608_184720_b8ujgp.jpg"
)
user_captain.save!

user_1 = User.new(
  first_name: 'Alex',
  last_name: 'de Hollain',
  username: 'Mouton',
  email: 'alex@gmail.com',
  gender: 'male',
  country: 'Argentina',
  age: 35,
  zip_code: 1600,
  password: "123456",
  avatar: "https://res.cloudinary.com/tony-thunder-cloud/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1654771793/Direct-league/20220608_184736_wzyab6.jpg"
)
user_1.save!

user_2 = User.new(
  first_name: 'Valentine',
  last_name: 'de lamine',
  username: 'Ghost_lamine',
  email: 'valentine@gmail.com',
  gender: 'male',
  country: 'Belgium',
  age: 32,
  zip_code: 1200,
  password: "123456",
  avatar: "https://res.cloudinary.com/tony-thunder-cloud/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1654771793/Direct-league/20220608_184702_rztqvr.jpg"
)
user_2.save!

user_3 = User.new(
  first_name: 'Augusto',
  last_name: 'Leone',
  username: 'Leone10',
  email: 'augusto@gmail.com',
  gender: 'male',
  country: 'Belgium',
  age: 32,
  zip_code: 1200,
  password: "123456",
  avatar: "https://res.cloudinary.com/tony-thunder-cloud/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1654771794/Direct-league/20220608_184615_wynvpr.jpg"
)
user_3.save!

user_4 = User.new(
  first_name: 'Olivier',
  last_name: 'De Bruyne',
  username: 'CSS Grid',
  email: 'olivier@gmail.com',
  gender: 'male',
  country: 'Belgium',
  age: 32,
  zip_code: 1200,
  password: "123456",
  avatar: "https://res.cloudinary.com/tony-thunder-cloud/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1654771794/Direct-league/20220608_190616_pzlr1a.jpg"
)
user_4.save!

user_5 = User.new(
  first_name: 'Aadel',
  last_name: 'Ronaldo',
  username: 'The_Big_Boss',
  email: 'aadel@gmail.com',
  gender: 'male',
  country: 'Belgium',
  age: 32,
  zip_code: 1200,
  password: "123456",
  avatar: "https://res.cloudinary.com/tony-thunder-cloud/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1654771794/Direct-league/20220608_185818_giw8t6.jpg"
)
user_5.save!

user_6 = User.new(
  first_name: 'Raphael',
  last_name: 'Messi',
  username: 'Git_data',
  email: 'raph@gmail.com',
  gender: 'male',
  country: 'Belgium',
  age: 32,
  zip_code: 1200,
  password: "123456",
  avatar: "https://res.cloudinary.com/tony-thunder-cloud/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1654771794/Direct-league/20220608_184833_kp6mav.jpg"
)
user_6.save!

user_7 = User.new(
  first_name: 'Eduard',
  last_name: 'Wolf',
  username: 'Eduard_89',
  email: 'eduard@gmail.com',
  gender: 'male',
  country: 'Belgium',
  age: 32,
  zip_code: 1200,
  password: "123456",
  avatar: "https://res.cloudinary.com/tony-thunder-cloud/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1654771793/Direct-league/20220608_184806_rjvsru.jpg"
)
user_7.save!

barca = Team.new(
  team_name: "Wolfs",
  team_banner: "https://res.cloudinary.com/tony-thunder-cloud/image/upload/v1654771794/Direct-league/20220608_185033_vhggdw.jpg",
  team_logo: "https://1.bp.blogspot.com/-7vbWKqvLYPM/XzdoC22VlpI/AAAAAAAAC8Y/88uoI2fjUcIIZRIZ98VpbNcuwtQKdbt8ACLcBGAsYHQ/s2048/Blue%2Bwolf%2Bmascot%2Blogo%2Btemplate.jpg",
  country: "Belgium",
  city: "Brussels",
  zip_code: 1000,
  size: 6,
  user_id: user_jack_captain.id
)
barca.save!

om = Team.new(
  team_name: "Le Baguettes",
  team_banner: "https://res.cloudinary.com/tony-thunder-cloud/image/upload/v1654771794/Direct-league/20220608_185127_yjqxb4.jpg",
  team_logo: "https://th.bing.com/th/id/R.9f889831e79e4768e57e2c1e9711de0f?rik=F2p5gDistSgl6A&riu=http%3a%2f%2fclipartmag.com%2fimages%2fbaguette-cliparts-16.png&ehk=s%2frtu1ToIgm%2fGE294%2fCPx08wO0SLsWU5W06%2bYHp3D8o%3d&risl=&pid=ImgRaw&r=0",
  country: "Belgium",
  city: "Brussels",
  zip_code: 1015,
  size: 6,
  user_id: user_pierrick_captain.id
)
om.save!

bvb = Team.new(
  team_name: "Les Metralletes",
  team_banner: "https://res.cloudinary.com/tony-thunder-cloud/image/upload/v1654773383/Direct-league/BG_fmnpwt.png",
  team_logo: "https://f1.pngfuel.com/png/772/129/262/american-football-logo-mascot-sports-emblem-team-mobile-legends-head-png-clip-art.png",
  country: "Belgium",
  city: "Brussels",
  zip_code: 1017,
  size: 6,
  user_id: user_7.id
)
bvb.save!

rm = Team.new(
  team_name: "Les Pistolets",
  team_banner: "https://res.cloudinary.com/tony-thunder-cloud/image/upload/v1654773383/Direct-league/BG_fmnpwt.png",
  team_logo: "https://1.bp.blogspot.com/-NNihJEasaE0/XzdoFPvKrzI/AAAAAAAAC8c/Ood9HgEbkPob1ko8-Gatj191XlHDADBBwCLcBGAsYHQ/s2048/Blue%2Bwolves%2Be-sport%2Blogo.jpg",
  country: "Belgium",
  city: "Brussels",
  zip_code: 1010,
  size: 6,
  user_id: user_captain.id
)
rm.save!

team1 = Team.new(
  team_name: "Angry Birds",
  team_banner: "https://res.cloudinary.com/tony-thunder-cloud/image/upload/v1654773383/Direct-league/BG_fmnpwt.png",
  team_logo: "https://1.bp.blogspot.com/-tTtd3ymS4qw/XzdoAzit8TI/AAAAAAAAC8U/QWvXX3sqyOgsm_EflWA8tCR9pSBJ3v9xgCLcBGAsYHQ/s640/Black%2Beagle%2Besport%2Blogo%2Btemplate.jpg",
  country: "Belgium",
  city: "Brussels",
  zip_code: 1005,
  size: 6,
  user_id: user_4.id
)
team1.save!

team2 = Team.new(
  team_name: "Samurais",
  team_banner: "https://res.cloudinary.com/tony-thunder-cloud/image/upload/v1654773383/Direct-league/BG_fmnpwt.png",
  team_logo: "https://1.bp.blogspot.com/-iBjpvKmlrMw/XzdoFW-NGfI/AAAAAAAAC8g/QSPe_urAN8o-JGXBdX10ankmyGFSyvxlgCLcBGAsYHQ/s2041/Dark%2Bfire%2Bninja%2Bmascot%2Blogo%2Btemplate.jpg",
  country: "Belgium",
  city: "Brussels",
  zip_code: 1007,
  size: 6,
  user_id: user_2.id
)
team2.save!

team3 = Team.new(
  team_name: "Spicy Pumpkins",
  team_banner: "https://res.cloudinary.com/tony-thunder-cloud/image/upload/v1654773383/Direct-league/BG_fmnpwt.png",
  team_logo: "https://th.bing.com/th/id/OIP.mFAL-_MhER3aVt3ts_S98AHaHa?pid=ImgDet&rs=1",
  country: "Belgium",
  city: "Brussels",
  zip_code: 1001,
  size: 6,
  user_id: user_3.id
)
team3.save!

team4 = Team.new(
  team_name: "Crazy Moutons",
  team_banner: "https://res.cloudinary.com/tony-thunder-cloud/image/upload/v1654773383/Direct-league/BG_fmnpwt.png",
  team_logo: "https://1.bp.blogspot.com/-WlWhBIxq5-Y/XzdoOdA1EDI/AAAAAAAAC84/0JqZK0jTtugsPSyKpbvKL6Mw9Mdw99F-gCLcBGAsYHQ/s2048/Goat%2Besport%2Blogo%2Btemplate.jpg",
  country: "Belgium",
  city: "Brussels",
  zip_code: 1020,
  size: 6,
  user_id: user_1.id
)
team4.save!

team5 = Team.new(
  team_name: "Dragons",
  team_banner: "https://res.cloudinary.com/tony-thunder-cloud/image/upload/v1654773383/Direct-league/BG_fmnpwt.png",
  team_logo: "https://yt3.ggpht.com/a/AATXAJz0UdHBwom_nGESpLJL4nDykjjukSdOsN8PxcKEmA=s900-c-k-c0xffffffff-no-rj-mo",
  country: "Belgium",
  city: "Brussels",
  zip_code: 1020,
  size: 6,
  user_id: user_5.id
)
team5.save!

team6 = Team.new(
  team_name: "Wild Pokemons",
  team_banner: "https://res.cloudinary.com/tony-thunder-cloud/image/upload/v1654773383/Direct-league/BG_fmnpwt.png",
  team_logo: "https://i.pinimg.com/474x/e2/35/5d/e2355d3cbbc886313de8d644de8e2d15.jpg",
  country: "Belgium",
  city: "Brussels",
  zip_code: 1025,
  size: 6,
  user_id: user_6.id
)
team6.save!

team7 = Team.new(
  team_name: "Cheems FC",
  team_banner: "https://res.cloudinary.com/tony-thunder-cloud/image/upload/v1654775826/Direct-league/20220525_190137_fbhfbf.jpg",
  team_logo: "https://i.pinimg.com/originals/a9/f7/5e/a9f75ef129f496fb31d00a7b686d48dd.jpg",
  country: "Belgium",
  city: "Brussels",
  zip_code: 1001,
  size: 6,
  user_id: user_tony_captain.id
)
team7.save!
