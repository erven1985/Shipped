# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  user = User.new(email: "sbw2122@columbia.edu", username: "sbw2122", firstname: "Bryce", lastname: "Williams", gender: "M", dob: "april 5th, 1992", password: "1234567Sbw")
  user.save!

  


  @boat = Boat.new(name: "Titanic", container: 10)

  @user = User.first

  @boat.user = @user

  @boat.save!

  @job = Job.new(name: "shipment", destination:"nyc", origin:"england", price: 500, description: "livebird", container: 5)

  @job.boat_id = @boat.id

  @job.save!

  @boat.job_id = @job.id

