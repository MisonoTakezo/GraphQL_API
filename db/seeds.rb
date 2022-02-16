# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

0.upto(2) do |i|
  User.create!(
    name: "user#{i}",
    email: "user#{i}@example.com"
  )
end
0.upto(2) do |i|
  Label.create!(
    name: "label#{i}"
  )
end
0.upto(2) do |i|
  Post.create!(
    user: User.first,
    label: Label.first,
    title: "post#{i}"
  )
  Post.create!(
    user: User.second,
    label: Label.second,
    title: "post#{i + 2}"
  )
  Post.create!(
    user: User.third,
    label: Label.third,
    title: "post#{i + 4}"
  )
end
