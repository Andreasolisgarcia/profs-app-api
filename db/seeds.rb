# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Role.create!(role: 'Student')
Role.create!(role: 'Teacher')
Role.create!(role: 'Admin')

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

t.string :first_name
t.string :last_name
t.string :celphone
t.belongs_to :address
t.date :birthdate
t.string :pronouns


20.times do
    Addresse.create(
      street: Faker::Address.street_address,
      city: Faker::Address.city,
      state: Faker::Address.state,
      country: Faker::Address.country,
      postalcode: Faker::Address.postcode
    )
  end

20.times do |i|
    birthdate = Faker::Date.birthday(min_age: 18)
    
    User.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      celphone: Faker::PhoneNumber.phone_number,
      addresse: Addresse.find(i + 1),
      birthdate: birthdate,
      pronouns: pronouns.sample
    )
  end

