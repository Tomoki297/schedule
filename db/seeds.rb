# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(admin: true, username: 'tentama', email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

 @task = Task.new
 @task.task = 'task1'
 @task.state = 'todo'
 @task.save
