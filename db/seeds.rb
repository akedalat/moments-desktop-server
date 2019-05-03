# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name:"John", password:"123", email:"john@flatiron.com", avatar:"http://localhost:3000/face_emoji.png")
u2 = User.create(name:"Tommy Angelo", password:"123", email:"tommy@flatiron.com", avatar:"http://localhost:3000/face_emoji.png")
u3 = User.create(name:"Vito Scaletta", password:"123", email:"vito@flatiron.com", avatar:"http://localhost:3000/face_emoji.png")
u4 = User.create(name:"Sofia", password:"123", email:"sofia@flatiron.com", avatar:"http://localhost:3000/face_emoji.png")
u5 = User.create(name:"Daniel", password:"123", email:"daniel@flatiron.com", avatar:"http://localhost:3000/face_emoji.png")
u6 = User.create(name:"ana", password:"123", email:"ana@flatiron.com", avatar:"http://localhost:3000/face_emoji.png")
u7 = User.create(name:"Sarah Jacob", password:"123", email:"sarah@flatiron.com", avatar:"http://localhost:3000/face_emoji.png")
u8 = User.create(name:"Stuart Sewell", password:"123", email:"stuart@flatiron.com", avatar:"http://localhost:3000/face_emoji.png")
u9 = User.create(name:"Sam Baker", password:"123", email:"sam@flatiron.com", avatar:"http://localhost:3000/face_emoji.png")
u10 = User.create(name:"Gabriel", password:"123", email:"gabriel@flatiron.com", avatar:"http://localhost:3000/face_emoji.png")


Post.create(caption:"Me looking at you al the time babe!", image:"http://localhost:3000/1.jpg", user_id:u1.id)
Post.create(image:"http://localhost:3000/2.jpg", user_id:u1.id)
Post.create(caption:"Developer can't fix the bug!", image:"http://localhost:3000/3.jpg", user_id:u2.id)
Post.create(caption:"How can you not go veg?", image:"http://localhost:3000/4.jpg", user_id:u3.id)
Post.create(caption:"I (the sheep) and my wife (the dog)", image:"http://localhost:3000/5.jpg", user_id:u3.id)
Post.create(caption:":))", image:"http://localhost:3000/6.jpg", user_id:u4.id)
Post.create(caption:"All right, Mr. DeMille, I'm ready for my close-up.", image:"http://localhost:3000/7.jpg", user_id:u4.id)
Post.create(caption:"They call me Mister Tibbs!", image:"http://localhost:3000/8.jpg", user_id:u5.id)
Post.create(caption:"What we've got here is failure to communicate.", image:"http://localhost:3000/9.jpg", user_id:u6.id)
Post.create(caption:"Made it, Ma! Top of the world!", image:"http://localhost:3000/10.jpg", user_id:u6.id)
Post.create(caption:"There's no place like home.", image:"http://localhost:3000/11.jpg", user_id:u6.id)
Post.create(caption:"My precious.", image:"http://localhost:3000/12.jpg", user_id:u5.id)
Post.create(caption:"I have always depended on the kindness of strangers.", image:"http://localhost:3000/13.jpg", user_id:u7.id)
Post.create(caption:"Chewie, we're home.", image:"http://localhost:3000/14.jpg", user_id:u7.id)
Post.create(caption:"Forget it, Jake. It's Chinatown.", image:"http://localhost:3000/15.jpg", user_id:u7.id)
Post.create(image:"http://localhost:3000/16.jpg", user_id:u8.id)
Post.create(caption:"", image:"http://localhost:3000/17.jpg", user_id:u8.id)
Post.create(caption:"Just when I thought I was out, they pull me back in.", image:"http://localhost:3000/18.jpg", user_id:u8.id)
Post.create(image:"http://localhost:3000/19.jpg", user_id:u9.id)
Post.create(caption:"After all, tomorrow is another day!", image:"http://localhost:3000/20.jpg", user_id:u10.id)
