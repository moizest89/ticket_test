# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



r1 = Role.create({name: "Admin", description: "Can perform any CRUD operation on any resource"})
r2 = Role.create({name: "Technical", description: "Can read ticket and upload PDF with the results."})
r3 = Role.create({name: "Tenant", description: "Can create ticket for technical support"})

User.create({name: "Moises Portillo", email: "admin@example.com", password: "1234567890", password_confirmation: "1234567890", role_id: r1.id})
User.create({name: "Jorge Escalante", email: "jorge@example.com", password: "1234567890", password_confirmation: "1234567890", role_id: r2.id})
User.create({name: "Kevin Argumedo", email: "kevin@example.com", password: "1234567890", password_confirmation: "1234567890", role_id: r3.id})

