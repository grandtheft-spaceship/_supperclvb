5.times do 
  User.create({username: Faker::Internet.user_name,
               email: Faker:: Internet.email,
               password: 'password',
               avatar: Faker::Avatar.image})
end

User.all.each do |user|
  user.trucks.create({name: Faker::Company.name,
                      address: Faker::Address.city})
end

Truck.all.each do |truck|
  truck.reviews.create({patron_id: rand(1..5),
                        rating: rand(1..5),
                        comment: Faker::Lorem.paragraph})
end

                        