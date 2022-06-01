require "open-uri"

puts 'Creating usernames...'

julia = User.create(username: 'julia', email: 'julia@my-utopia.me', password: 'password', password_confirmation: 'password')
gordana = User.create(username: 'gordana', email: 'gordana@my-utopia.me', password: 'password', password_confirmation: 'password')
ryad = User.create(username: 'ryad', email: 'ryad@my-utopia.me', password: 'password', password_confirmation: 'password')

puts 'Users created!'

puts 'Creating characters...'
file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654018746/Sonic_the_Hedgehog_-_Sonic_Mania_kw9iuq.png')
sonic = Character.new(name: 'Sonic the Hedgehog', world: 'Sonic Mania', race: "Sonic")
sonic.photo.attach(io: file, filename: 'sonic.png', content_type: 'image/png')
sonic.user = ryad
sonic.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654018746/Lara_Croft_-_Rise_of_the_Tomb_Raider_uoo0gt.png')
lara = Character.new(name: 'Lara Croft', world: 'Rise of The Tomb', race: "Lara")
lara.photo.attach(io: file, filename: 'lara.png', content_type: 'image/png')
lara.user = ryad
lara.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654018745/Pac-Man_Pac-Man_Championship_Edition_DX_qnar1j.png')
pacman = Character.new(name: 'Pac-Man', world: 'Pac Man Championship Edition DX', race: "Pac-Man")
pacman.photo.attach(io: file, filename: 'pacman.png', content_type: 'image/png')
pacman.user = ryad
pacman.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654018745/Solid_Snake_-_Metal_Gear_Solid_uoifgy.png')
solid = Character.new(name: 'Solid Snake', world: 'Metal Gear Solid', race: "Solid Snake")
solid.photo.attach(io: file, filename: 'solid.png', content_type: 'image/png')
solid.user = ryad
solid.save


file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654018745/Link_-_The_Legend_of_Zelda_Breath_of_the_Wild_mqqpz5.png')
link = Character.new(name: 'Link', world: 'The Legend of Zelda', race: "Zelda")
link.photo.attach(io: file, filename: 'link.png', content_type: 'image/png')
link.user = julia
link.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654018745/Z-shaped_Tetris_Block_-_Tetris_umo26z.png')
tetris = Character.new(name: 'Z-shaped Tetris Block', world: 'Tetris', race: "Tetris")
tetris.photo.attach(io: file, filename: 'tetris.png', content_type: 'image/png')
tetris.user = julia
tetris.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654018745/Master_Chief_-_Halo_Reach_e8b3i0.png')
master = Character.new(name: 'Master Chief', world: 'Halo Reach', race: "Master")
master.photo.attach(io: file, filename: 'master.png', content_type: 'image/png')
master.user = julia
master.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654018745/Crash_Bandicoot_-_Crash_Bandicoot_Warped_jl5ok0.png')
bandicot = Character.new(name: 'Crash Bandicot', world: 'Crash Bandicoot', race: "Bandicot")
bandicot.photo.attach(io: file, filename: 'bandicot.png', content_type: 'image/png')
bandicot.user = julia
bandicot.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654018745/Crash_Bandicoot_-_Crash_Bandicoot_Warped_jl5ok0.png')
kratos = Character.new(name: 'Kratos', world: 'Kulas', race: "Kratos")
kratos.photo.attach(io: file, filename: 'kratos.png', content_type: 'image/png')
kratos.user = julia
kratos.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654018744/Spyro_-_Spyro_the_Dragon_qmihpg.png')
spyro = Character.new(name: 'Spyro', world: 'Spyro The Dragon', race: "Dragon")
spyro.photo.attach(io: file, filename: 'spyro.png', content_type: 'image/png')
spyro.user = gordana
spyro.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654018744/Ellie_-_The_Last_of_Us_yhkxv2.png')
ellie = Character.new(name: 'Ellie', world: 'The Last of Us', race: "Ellie")
ellie.photo.attach(io: file, filename: 'ellie.png', content_type: 'image/png')
ellie.user = gordana
ellie.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654018744/Geralt_of_Rivia_The_Witcher_2_Wild_Hunt_z4ktdy.png')
geralt = Character.new(name: 'Geralt of Rivia', world: 'The Witcher 2 Wild Hunt', race: "Witcher")
geralt.photo.attach(io: file, filename: 'geralt.png', content_type: 'image/png')
geralt.user = gordana
geralt.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654018744/Pikachu_-_Pokemon_Gold_and_Silver_ymxi8c.png')
pikachu = Character.new(name: 'Pikachu', world: 'Pokemon Gold and Silver', race: "Pokemon")
pikachu.photo.attach(io: file, filename: 'pikachu.png', content_type: 'image/png')
pikachu.user = gordana
pikachu.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654018744/Nathan_Drake_-_Uncharted_wecwmp.png')
drake = Character.new(name: 'Nathan Drake', world: 'Uncharted', race: "Drake")
drake.photo.attach(io: file, filename: 'drake.png', content_type: 'image/png')
drake.user = gordana
drake.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1654018744/Mario_-_Super_Mario_Bros._guyxct.png')
mario = Character.new(name: 'Mario', world: 'Super Mario Bros', race: "Super")
mario.photo.attach(io: file, filename: 'mario.png', content_type: 'image/png')
mario.user = julia
mario.save

Character.all.each do |character|
  character_seed = Chatroom.create(name: "#chatroom_#{character.name}")
  character_seed.character_id = character.id
  character_seed.save
end


puts 'Characters created. All set!'
