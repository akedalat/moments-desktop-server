# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name:"John", username:"john", password:"123", email:"john@flatiron.com", avatar:"http://localhost:3000/face_emoji.png")
u2 = User.create(name:"Tommy Angelo", username:"tommy", password:"123", email:"tommy@flatiron.com", avatar:"http://localhost:3000/face_emoji.png")
u3 = User.create(name:"Vito Scaletta", username:"vito", password:"123", email:"vito@flatiron.com", avatar:"http://localhost:3000/face_emoji.png")
u4 = User.create(name:"Sofia", password:"123", username:"sofia", email:"sofia@flatiron.com", avatar:"http://localhost:3000/face_emoji.png")
u5 = User.create(name:"Daniel", password:"123", username:"daniel", email:"daniel@flatiron.com", avatar:"http://localhost:3000/face_emoji.png")
u6 = User.create(name:"ana", password:"123", username:"ana", email:"ana@flatiron.com", avatar:"http://localhost:3000/face_emoji.png")
u7 = User.create(name:"Sarah Jacob", password:"123", username:"sarah", email:"sarah@flatiron.com", avatar:"http://localhost:3000/face_emoji.png")
u8 = User.create(name:"Stuart Sewell", password:"123", username:"stuart", email:"stuart@flatiron.com", avatar:"http://localhost:3000/face_emoji.png")
u9 = User.create(name:"Sam Baker", password:"123", username:"sam", email:"sam@flatiron.com", avatar:"http://localhost:3000/face_emoji.png")
u10 = User.create(name:"Gabriel", password:"123", username:"gabriel", email:"gabriel@flatiron.com", avatar:"http://localhost:3000/face_emoji.png")


p1= Post.create(caption:"Me looking at you all the time babe!", image:"http://localhost:3000/1.jpg", user_id:u1.id)
p2 = Post.create(image:"http://localhost:3000/2.jpg", user_id:u1.id)
p3 = Post.create(caption:"Developer can't fix the bug!", image:"http://localhost:3000/3.jpg", user_id:u2.id)
p4 = Post.create(caption:"How can you not go veg?", image:"http://localhost:3000/4.jpg", user_id:u3.id)
p5 = Post.create(caption:"I (the sheep) and my wife (the dog)", image:"http://localhost:3000/5.jpg", user_id:u3.id)
p6 = Post.create(caption:":))", image:"http://localhost:3000/6.jpg", user_id:u4.id)
p7 = Post.create(caption:"All right, Mr. DeMille, I'm ready for my close-up.", image:"http://localhost:3000/7.jpg", user_id:u4.id)
p8 = Post.create(caption:"They call me Mister Tibbs!", image:"http://localhost:3000/8.jpg", user_id:u5.id)
p9 = Post.create(caption:"What we've got here is failure to communicate.", image:"http://localhost:3000/9.jpg", user_id:u6.id)
p10 = Post.create(caption:"Made it, Ma! Top of the world!", image:"http://localhost:3000/10.jpg", user_id:u6.id)
p11 = Post.create(caption:"There's no place like home.", image:"http://localhost:3000/11.jpg", user_id:u6.id)
p12 = Post.create(caption:"My precious.", image:"http://localhost:3000/12.jpg", user_id:u5.id)
p13 = Post.create(caption:"I have always depended on the kindness of strangers.", image:"http://localhost:3000/13.jpg", user_id:u7.id)
p14 = Post.create(caption:"Chewie, we're home.", image:"http://localhost:3000/14.jpg", user_id:u7.id)
p15 = Post.create(caption:"Forget it, Jake. It's Chinatown.", image:"http://localhost:3000/15.jpg", user_id:u7.id)
p16 = Post.create(image:"http://localhost:3000/16.jpg", user_id:u8.id)
p17 = Post.create(caption:"", image:"http://localhost:3000/17.jpg", user_id:u8.id)
p18 = Post.create(caption:"Just when I thought I was out, they pull me back in.", image:"http://localhost:3000/18.jpg", user_id:u8.id)
p19 = Post.create(image:"http://localhost:3000/19.jpg", user_id:u9.id)
p20 = Post.create(caption:"After all, tomorrow is another day!", image:"http://localhost:3000/20.jpg", user_id:u10.id)

#u1 Relationship
Relationship.create(follower_id: u1.id, followed_id: u2.id)
Relationship.create(follower_id: u1.id, followed_id: u3.id)
Relationship.create(follower_id: u1.id, followed_id: u4.id)

#u2 Relationship
Relationship.create(follower_id: u2.id, followed_id: u5.id)
Relationship.create(follower_id: u2.id, followed_id: u9.id)

#u3 Relationship
Relationship.create(follower_id: u3.id, followed_id: u2.id)
Relationship.create(follower_id: u3.id, followed_id: u4.id)
Relationship.create(follower_id: u3.id, followed_id: u6.id)
Relationship.create(follower_id: u3.id, followed_id: u7.id)
Relationship.create(follower_id: u3.id, followed_id: u8.id)
Relationship.create(follower_id: u3.id, followed_id: u9.id)

#u4 Relationship
Relationship.create(follower_id: u4.id, followed_id: u1.id)
Relationship.create(follower_id: u4.id, followed_id: u6.id)
Relationship.create(follower_id: u4.id, followed_id: u7.id)
Relationship.create(follower_id: u4.id, followed_id: u10.id)

#u5 Relationship
Relationship.create(follower_id: u5.id, followed_id: u10.id)
Relationship.create(follower_id: u5.id, followed_id: u9.id)
Relationship.create(follower_id: u5.id, followed_id: u6.id)
Relationship.create(follower_id: u5.id, followed_id: u4.id)

#u6 Relationship
Relationship.create(follower_id: u6.id, followed_id: u10.id)
Relationship.create(follower_id: u6.id, followed_id: u4.id)
Relationship.create(follower_id: u6.id, followed_id: u5.id)
Relationship.create(follower_id: u6.id, followed_id: u7.id)

#u7 Relationship
Relationship.create(follower_id: u7.id, followed_id: u1.id)
Relationship.create(follower_id: u7.id, followed_id: u2.id)
Relationship.create(follower_id: u7.id, followed_id: u3.id)
Relationship.create(follower_id: u7.id, followed_id: u4.id)
Relationship.create(follower_id: u7.id, followed_id: u5.id)
Relationship.create(follower_id: u7.id, followed_id: u6.id)
Relationship.create(follower_id: u7.id, followed_id: u8.id)

#u8 Relationship
Relationship.create(follower_id: u8.id, followed_id: u1.id)
Relationship.create(follower_id: u8.id, followed_id: u2.id)
Relationship.create(follower_id: u8.id, followed_id: u3.id)
Relationship.create(follower_id: u8.id, followed_id: u4.id)
Relationship.create(follower_id: u8.id, followed_id: u5.id)
Relationship.create(follower_id: u8.id, followed_id: u6.id)
Relationship.create(follower_id: u8.id, followed_id: u9.id)

#u9 Relationship
Relationship.create(follower_id: u9.id, followed_id: u5.id)
Relationship.create(follower_id: u9.id, followed_id: u6.id)
Relationship.create(follower_id: u9.id, followed_id: u7.id)
Relationship.create(follower_id: u9.id, followed_id: u8.id)

#u10 Relationship
Relationship.create(follower_id: u10.id, followed_id: u1.id)
Relationship.create(follower_id: u10.id, followed_id: u2.id)
Relationship.create(follower_id: u10.id, followed_id: u3.id)
Relationship.create(follower_id: u10.id, followed_id: u4.id)
Relationship.create(follower_id: u10.id, followed_id: u5.id)
Relationship.create(follower_id: u10.id, followed_id: u6.id)
Relationship.create(follower_id: u10.id, followed_id: u7.id)
Relationship.create(follower_id: u10.id, followed_id: u8.id)

#u1 Comments
Comment.create(user_id: u1.id, post_id: p1.id, content: "hahahaha")
Comment.create(user_id: u1.id, post_id: p2.id, content: "So cute! Are they yours? :D")
Comment.create(user_id: u1.id, post_id: p4.id, content: "Reminds me of highschool pictures after graduation every year!")
Comment.create(user_id: u1.id, post_id: p5.id, content: "Your wife is frustrated of you!")
Comment.create(user_id: u1.id, post_id: p6.id, content: "Amazing!")
Comment.create(user_id: u1.id, post_id: p10.id, content: "OMG")

#u2 Comments
Comment.create(user_id: u2.id, post_id: p3.id, content: "lol")
Comment.create(user_id: u2.id, post_id: p4.id, content: "Is that Kian on the right?")
Comment.create(user_id: u2.id, post_id: p5.id, content: "What? That's me not your wife! :D")
Comment.create(user_id: u2.id, post_id: p7.id, content: "Run Forest!")
Comment.create(user_id: u2.id, post_id: p8.id, content: "Before you diagnose yourself with depression or low self esteem, first make sure that you are not, in fact, just surrounding yourself with assholes.")
Comment.create(user_id: u2.id, post_id: p9.id, content: "Sometimes the appropriate response to reality is to go insane.")

#u3 Comments
Comment.create(user_id: u3.id, post_id: p10.id, content: '"The best thing about the future is that it comes one day at a time."')
Comment.create(user_id: u3.id, post_id: p11.id, content: "We're not allowed to do anything to nature anymore, except look at it. It's like porn with leaves.")
Comment.create(user_id: u3.id, post_id: p12.id, content: 'Spring is nature\'s way of saying, "Let\'s party!"')

#u4 Comments
Comment.create(user_id: u4.id, post_id: p13.id, content: 'Every time I describe a city I am saying something about CHINA TOWN.')
Comment.create(user_id: u4.id, post_id: p14.id, content: "Kuala Lumpur La!")
Comment.create(user_id: u4.id, post_id: p15.id, content: 'I am not interested in living in a city where there isn\'t a production by Samuel Beckett running')

#u5 Comments
Comment.create(user_id: u5.id, post_id: p16.id, content: 'Nothing is certain in London but expense')
Comment.create(user_id: u5.id, post_id: p17.id, content: "Long live LGBT")
Comment.create(user_id: u5.id, post_id: p18.id, content: 'I think London’s sexy because it’s so full of eccentrics')

#u6 Comments
Comment.create(user_id: u6.id, post_id: p19.id, content: 'I miss this place')
Comment.create(user_id: u6.id, post_id: p20.id, content: "Love")

#u7 & u8 Comments
Comment.create(user_id: u7.id, post_id: p1.id, content: "Properly trained, a man can be sheep's best friend.")
Comment.create(user_id: u7.id, post_id: p2.id, content: "The fate of animals is of far greater importance to me than the fear of appearing ridiculous")
Comment.create(user_id: u7.id, post_id: p4.id, content: "Some people talk to animals. Not many listen though. That's the problem")
Comment.create(user_id: u8.id, post_id: p7.id, content: "We all know interspecies romance is weird")
Comment.create(user_id: u8.id, post_id: p6.id, content: "Did you ever walk into a room and forget why you walked in? I think that is how dogs spend their lives")
Comment.create(user_id: u8.id, post_id: p9.id, content: "A cat is a puzzle for which there is no solution")

#u9 & u10 Comments
Comment.create(user_id: u8.id, post_id: p10.id, content: "See you Tomorrow!")
Comment.create(user_id: u8.id, post_id: p12.id, content: "See you Tomorrow too!")
Comment.create(user_id: u8.id, post_id: p13.id, content: "The future Mr Gittes, the future")
Comment.create(user_id: u9.id, post_id: p14.id, content: "This is huge man!")
Comment.create(user_id: u9.id, post_id: p16.id, content: "London is a bad habit one hates to lose.")
Comment.create(user_id: u9.id, post_id: p19.id, content: "B-E-A-U-T-I-F-U-L")
