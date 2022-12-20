# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Cleaning DB

p "🧹 Cleaning DB"
User.destroy_all
Listing.destroy_all
Booking.destroy_all
Review.destroy_all
p "🧽 DB wiped"

# users
users = %w[asta mat pedro nicolo]
# start_date_seed = ['2022, 01, 10', '2022, 01, 14', '2023, 01, 16', '2023, 01, 22', '2023, 01, 28']
# end_date_seed = [2023/02/04, 2023/02/11, 2023/02/15, 2023/02/20, 2023/02/25]

presidence = User.create!(
  first_name: 'macarons',
  last_name: "bleu",
  password: 'azerty',
  email: "#lol@mail.fr"
)

presidence.listings.create!(
  name: "palais de l'elysee",
  address: "5e"
)

users.each do |user|
  new_user = User.create!(
    first_name: user,
    last_name: "Family #{user}",
    password: 'azerty',
    email: "#{user}@mail.fr"
  )
  p "🦸‍♂️ created user: #{user}"
  new_user.listings.create!(
    name: "chalet de #{user}",
    address: "Bourg San#{user} "
  )
  p "🏘 created listing#1 for #{user}"
  new_user.listings.create!(
    name: "Villa #{user}",
    address: "Impasse San#{user} ",
    note: 5
  )
  p "🏘 created listing#2 for #{user}"
  # new_user.bookings.create!(
  #   start_date: DateTime.new.(2022, 01, 10),
  #   end_date: DateTime.new.(2022, 01, 20),
  #   listing_id: Listing.all.sample
  # )
  # p "⛵️ created booking#1 for #{user}"
end
