# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



r1 = Role.create({name: "Admin", description: "Can perform any CRUD operation on any resource"})
r2 = Role.create({name: "Technical", description: "Can read ticket and upload PDF with the results."})

u1 = User.create({name: "Moises Portillo", email: "admin@example.com", password: "1234567890", password_confirmation: "1234567890", role_id: r1.id})
u2 = User.create({name: "Jorge Escalante", email: "jorge@example.com", password: "1234567890", password_confirmation: "1234567890", role_id: r2.id})
u3 = User.create({name: "Kevin Argumedo", email: "kevin@example.com", password: "1234567890", password_confirmation: "1234567890", role_id: r2.id})

c1 = Category.create({name: "Asensores", description: "Asensores"})
c2 = Category.create({name: "Bombas de agua caliente", description: "Bombas de agua caliente"})
c3 = Category.create({name: "Bombas de agua fría", description: "Bombas de agua fria"})
c4 = Category.create({name: "Calderas", description: "Calderas"})
c5 = Category.create({name: "Alcantarias", description: "Alcantarias"})
c6 = Category.create({name: "Sistema de ventilación", description: "Sistema de ventilación"})
c7 = Category.create({name: "Instalación eléctrica", description: "Instalación eléctrica"})
c8 = Category.create({name: "Piscinas", description: "Piscinas"})

i1 = Item.create({description: "El asensor principal presenta problemas a la hora de cerrar la puerta", category_id: c1.id, user_id: u2.id})
i1 = Item.create({description: "El agua caliente no llega hasta el ultimo piso.", category_id: c2.id, user_id: u2.id})
i1 = Item.create({description: "La presion es demasiado fuerte y esta puede llegar a danar parte de las tuberias principales", category_id: c3.id, user_id: u2.id})
i1 = Item.create({description: "La caldera principal no llega a la temperatura adecuada", category_id: c4.id, user_id: u2.id})
i1 = Item.create({description: "La tapa de la alcantaria trasera no tiene seguro.", category_id: c5.id, user_id: u3.id})
i1 = Item.create({description: "El sistema de ventilación del nivel 2 esta completamente sucio", category_id: c6.id, user_id: u3.id})
i1 = Item.create({description: "El cableado principa del piso 2 esta mascado por el paso concurrido de las personas", category_id: c7.id, user_id: u2.id})
i1 = Item.create({description: "La piscina principal esta completamente sucia.", category_id: c8.id, user_id: u2.id})
