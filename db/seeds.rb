# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
pronouns = ['she/her', 'he/him', 'they/them', 'other']

courses_titles = [
  # Academic Courses
  "Mathematics",
  "Physics",
  "Chemistry",
  "Biology",
  "Computer Science",
  "History",
  "Literature",
  "Philosophy",
  "Economics",
  "Psychology",
  "Sociology",
  "Political Science",
  "Foreign Languages",
  "Art History",
  "Geography",
  
  # Life Skills and Non-Academic Courses
  "Personal Finance Management",
  "Effective Communication",
  "Leadership and Team Building",
  "Time Management",
  "Stress Management",
  "Critical Thinking and Problem Solving",
  "Emotional Intelligence",
  "Public Speaking and Presentation Skills",
  "Negotiation and Conflict Resolution",
  "Creative Thinking and Innovation",
  "Networking and Relationship Building",
  "Mindfulness and Meditation",
  "Assertiveness Training",
  "Goal Setting and Planning",
  "Career Development and Job Search",
  "Entrepreneurship and Small Business",
  "Digital Marketing",
  "Photography and Videography",
  "Graphic Design",
  "Web Design and Development",
  "Mobile App Development",
  "Social Media Management",
  "Content Writing and Blogging",
  "Personal Branding",
  "Cooking and Culinary Skills",
  "Gardening and Plant Care",
  "Home DIY and Repair",
  "Art and Crafts",
  "Fitness and Exercise",
  "Yoga and Pilates",
  "Dance",
  "Music Instrument Training",
  "Drawing and Painting",
  "Fashion Design and Styling",
  "Interior Design",
  "Self-Defense and Martial Arts",
  "Car Maintenance and Repair",
  "Outdoor Survival Skills",
  "Event Planning and Management",
  "Parenting and Childcare",
  "Pet Training and Care",
  "Travel and Adventure",
  "Wine Tasting and Appreciation",
  "Film and Movie Making",
  "Writing Fiction and Non-Fiction",
  "Astrology and Tarot Reading",
  "Home Organization and Decluttering",
  "CPR and First Aid"
]

# Role.create!(role: 'Student')
# Role.create!(role: 'Teacher')
# Role.create!(role: 'Admin')

# 20.times do
#   Address.create(
#     street: Faker::Address.street_address,
#     city: Faker::Address.city,
#     state: Faker::Address.state,
#     country: Faker::Address.country,
#     zipcode: Faker::Address.zip_code
#   )
# end

# 20.times do |i|
#   birthdate = Faker::Date.birthday(min_age: 18)
#   user = User.create(
#     email: Faker::Internet.email,
#     password: 'password',
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     cellphone: Faker::PhoneNumber.phone_number,
#     address: Address.find(i + 1),
#     birthdate: birthdate,
#     pronouns: pronouns.sample
#   )

#   # Assign roles to users
#   if i < 10
#     user.add_role('Student')
#   else
#     user.add_role('Teacher')
#   end
# end

(11..20).each do |i|
  teacher = User.find(i)
  Course.create!(
    user: teacher,
    title: courses_titles.sample,
    description: Faker::Lorem.paragraph,
    price: Faker::Commerce.price(range: 50..200),
    image_url: Faker::Internet.url,
    duration: [30, 60, 90].sample,
    is_online: Faker::Boolean.boolean,
    additional_cost: Faker::Commerce.price(range: 10..50)
  )
end