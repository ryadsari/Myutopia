require "open-uri"
puts "Cleaning db..."
Message.destroy_all
Chatroom.destroy_all
Character.destroy_all
User.destroy_all

puts 'Creating usernames...'

julia = User.create(username: 'julia', email: 'julia@my-utopia.me', password: 'password', password_confirmation: 'password')
gordana = User.create(username: 'gordana', email: 'gordana@my-utopia.me', password: 'password', password_confirmation: 'password')
ryad = User.create(username: 'ryad', email: 'ryad@my-utopia.me', password: 'password', password_confirmation: 'password')

puts 'Users created!'

puts 'Creating characters...'
file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654018746/Sonic_the_Hedgehog_-_Sonic_Mania_kw9iuq.png')
sonic = Character.new(name: 'Sonic the Hedgehog', world: 'Sonic Mania', race: "Hedgehog")
sonic.photo.attach(io: file, filename: 'sonic.png', content_type: 'image/png')
sonic.user = ryad
sonic.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654018746/Lara_Croft_-_Rise_of_the_Tomb_Raider_uoo0gt.png')
lara = Character.new(name: 'Lara Croft', world: 'Rise of The Tomb', race: "Human")
lara.photo.attach(io: file, filename: 'lara.png', content_type: 'image/png')
lara.user = ryad
lara.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654018745/Pac-Man_Pac-Man_Championship_Edition_DX_qnar1j.png')
pacman = Character.new(name: 'Pac-Man', world: 'Pac Man Championship Edition DX', race: "Alien")
pacman.photo.attach(io: file, filename: 'pacman.png', content_type: 'image/png')
pacman.user = gordana
pacman.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654018745/Solid_Snake_-_Metal_Gear_Solid_uoifgy.png')
solid = Character.new(name: 'Solid Snake', world: 'Metal Gear Solid', race: "Human")
solid.photo.attach(io: file, filename: 'solid.png', content_type: 'image/png')
solid.user = ryad
solid.save


file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654018745/Link_-_The_Legend_of_Zelda_Breath_of_the_Wild_mqqpz5.png')
link = Character.new(name: 'Link', world: 'The Legend of Zelda', race: "Hylian")
link.photo.attach(io: file, filename: 'link.png', content_type: 'image/png')
link.user = julia
link.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654018745/Z-shaped_Tetris_Block_-_Tetris_umo26z.png')
tetris = Character.new(name: 'Z-shaped Tetris Block', world: 'Tetris', race: "Alien")
tetris.photo.attach(io: file, filename: 'tetris.png', content_type: 'image/png')
tetris.user = julia
tetris.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654018745/Master_Chief_-_Halo_Reach_e8b3i0.png')
master = Character.new(name: 'Master Chief', world: 'Halo Reach', race: "Human")
master.photo.attach(io: file, filename: 'master.png', content_type: 'image/png')
master.user = julia
master.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654018745/Crash_Bandicoot_-_Crash_Bandicoot_Warped_jl5ok0.png')
bandicot = Character.new(name: 'Crash Bandicot', world: 'Crash Bandicoot', race: "Bandicot")
bandicot.photo.attach(io: file, filename: 'bandicot.png', content_type: 'image/png')
bandicot.user = julia
bandicot.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654018745/Crash_Bandicoot_-_Crash_Bandicoot_Warped_jl5ok0.png')
kratos = Character.new(name: 'Kratos', world: 'Kulas', race: "God")
kratos.photo.attach(io: file, filename: 'kratos.png', content_type: 'image/png')
kratos.user = julia
kratos.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654018744/Spyro_-_Spyro_the_Dragon_qmihpg.png')
spyro = Character.new(name: 'Spyro', world: 'Spyro The Dragon', race: "Dragon")
spyro.photo.attach(io: file, filename: 'spyro.png', content_type: 'image/png')
spyro.user = gordana
spyro.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654018744/Ellie_-_The_Last_of_Us_yhkxv2.png')
ellie = Character.new(name: 'Ellie', world: 'The Last of Us', race: "Human")
ellie.photo.attach(io: file, filename: 'ellie.png', content_type: 'image/png')
ellie.user = gordana
ellie.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654018744/Geralt_of_Rivia_The_Witcher_2_Wild_Hunt_z4ktdy.png')
geralt = Character.new(name: 'Geralt of Rivia', world: 'The Witcher 2 Wild Hunt', race: "Witcher")
geralt.photo.attach(io: file, filename: 'geralt.png', content_type: 'image/png')
geralt.user = ryad
geralt.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654018744/Pikachu_-_Pokemon_Gold_and_Silver_ymxi8c.png')
pikachu = Character.new(name: 'Pikachu', world: 'Pokemon Gold and Silver', race: "Pokemon")
pikachu.photo.attach(io: file, filename: 'pikachu.png', content_type: 'image/png')
pikachu.user = gordana
pikachu.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654018744/Nathan_Drake_-_Uncharted_wecwmp.png')
drake = Character.new(name: 'Nathan Drake', world: 'Uncharted', race: "Human")
drake.photo.attach(io: file, filename: 'drake.png', content_type: 'image/png')
drake.user = gordana
drake.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654018744/Mario_-_Super_Mario_Bros._guyxct.png')
mario = Character.new(name: 'Mario', world: 'Super Mario Bros', race: "Human")
mario.photo.attach(io: file, filename: 'mario.png', content_type: 'image/png')
mario.user = julia
mario.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654018744/Mario_-_Super_Mario_Bros._guyxct.png')
mario = Character.new(name: 'Mario', world: 'Super Mario Bros', race: "Human")
mario.photo.attach(io: file, filename: 'mario.png', content_type: 'image/png')
mario.user = julia
mario.save

puts 'Characters created!'

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654517301/lost_lore_b0zrfg.jpg')
lost_lore = Chatroom.new(name: 'Lost Lore', category: 'Fandom')
lost_lore.photo.attach(io: file, filename: 'lost_lore.png', content_type: 'image/png')
lost_lore.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654517301/league_of_legends_r6pgol.jpg')
league_of_legends = Chatroom.new(name: 'League of Legends', category: 'Fandom')
league_of_legends.photo.attach(io: file, filename: 'league_of_legends.png', content_type: 'image/png')
league_of_legends.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654517301/middle_earth_au8cb5.jpg')
middle_earth = Chatroom.new(name: 'Middle Earth', category: 'Fandom')
middle_earth.photo.attach(io: file, filename: 'middle_earth.png', content_type: 'image/png')
middle_earth.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654517301/mmo_wars_jwrwbf.png')
mmo_wars = Chatroom.new(name: 'MMO Wars', category: 'Fandom')
mmo_wars.photo.attach(io: file, filename: 'mmo_wars.png', content_type: 'image/png')
mmo_wars.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654517301/the_library_xwa7d4.jpg')
the_library = Chatroom.new(name: 'The Library', category: 'Fandom')
the_library.photo.attach(io: file, filename: 'the_library.png', content_type: 'image/png')
the_library.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654517300/d_d_llvred.jpg')
dungeonsanddragons = Chatroom.new(name: 'D&D', category: 'Fandom')
dungeonsanddragons.photo.attach(io: file, filename: 'dungeonsanddragons.png', content_type: 'image/png')
dungeonsanddragons.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654519478/of_hydaelyn_nwua6p.jpg')
of_hydaelyn = Chatroom.new(name: 'Of Hydaelyn', category: 'Canon')
of_hydaelyn.photo.attach(io: file, filename: 'of_hydaelyn.png', content_type: 'image/png')
of_hydaelyn.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654519480/azeroth_d8j3kz.png')
azeroth = Chatroom.new(name: 'Azeroth', category: 'Canon')
azeroth.photo.attach(io: file, filename: 'azeroth.png', content_type: 'image/png')
azeroth.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654519479/tyria_mbos4l.jpg')
tyria = Chatroom.new(name: 'Tyria', category: 'Canon')
tyria.photo.attach(io: file, filename: 'tyria.png', content_type: 'image/png')
tyria.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654519479/asgard_a4fdot.webp')
asgard = Chatroom.new(name: 'Asgard', category: 'Canon')
asgard.photo.attach(io: file, filename: 'asgard.png', content_type: 'image/png')
asgard.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654519479/elona_kkg6y4.jpg')
elona = Chatroom.new(name: 'Elona', category: 'Canon')
elona.photo.attach(io: file, filename: 'elona.png', content_type: 'image/png')
elona.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654519479/arkesia_fvuavo.jpg')
arkesia = Chatroom.new(name: 'Arkesia', category: 'Canon')
arkesia.photo.attach(io: file, filename: 'arkesia.png', content_type: 'image/png')
arkesia.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654519479/anime_madness_fodnc8.jpg')
anime_madness = Chatroom.new(name: 'Anime Madness', category: 'Original')
anime_madness.photo.attach(io: file, filename: 'anime_madness.png', content_type: 'image/png')
anime_madness.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654519479/LGBT_e5ekgj.jpg')
lgbt_zone = Chatroom.new(name: 'LGBT Zone', category: 'Original')
lgbt_zone.photo.attach(io: file, filename: 'lgbt_zone.png', content_type: 'image/png')
lgbt_zone.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654519479/RPG_tcdyco.webp')
rpg_zone = Chatroom.new(name: 'RPG', category: 'Original')
rpg_zone.photo.attach(io: file, filename: 'rpg_zone.png', content_type: 'image/png')
rpg_zone.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654519478/millenial_pc25bk.webp')
millenial = Chatroom.new(name: 'Millenial', category: 'Original')
millenial.photo.attach(io: file, filename: 'millenial.png', content_type: 'image/png')
millenial.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654519479/gen_z_h0mp8e.jpg')
gen_z = Chatroom.new(name: 'Gen Z', category: 'Original')
gen_z.photo.attach(io: file, filename: 'gen_z.png', content_type: 'image/png')
gen_z.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654519479/the_commonwealth_oftsxf.webp')
the_commonwealth = Chatroom.new(name: 'The Commonwealth', category: 'Original')
the_commonwealth.photo.attach(io: file, filename: 'the_commonwealth.png', content_type: 'image/png')
the_commonwealth.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654519479/the_passiflora_gxqjdd.webp')
the_passiflora = Chatroom.new(name: 'The Passiflora', category: 'NSWF')
the_passiflora.photo.attach(io: file, filename: 'the_passiflora.png', content_type: 'image/png')
the_passiflora.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654519479/ff14_vlooc9.png')
ff14 = Chatroom.new(name: 'FF14', category: 'NSWF')
ff14.photo.attach(io: file, filename: 'ff14.png', content_type: 'image/png')
ff14.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654519478/furry_yipx6y.jpg')
furry = Chatroom.new(name: 'Furry', category: 'NSWF')
furry.photo.attach(io: file, filename: 'furry.png', content_type: 'image/png')
furry.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654519478/furry_yipx6y.jpg')
bdsm = Chatroom.new(name: 'BDSM', category: 'NSWF')
bdsm.photo.attach(io: file, filename: 'bdsm.png', content_type: 'image/png')
bdsm.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654519479/anime_madness_fodnc8.jpg')
anime_madness = Chatroom.new(name: 'Anime Madness', category: 'NSWF')
anime_madness.photo.attach(io: file, filename: 'anime_madness.png', content_type: 'image/png')
anime_madness.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654500909/science_krtc7d.jpg')
others = Chatroom.new(name: 'Others', category: 'NSWF')
others.photo.attach(io: file, filename: 'others.png', content_type: 'image/png')
others.save

puts 'Chatrooms created!'
