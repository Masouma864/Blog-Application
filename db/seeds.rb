# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
first_user = User.create(name: 'Monkey D Luffy', photo: 'https://wallpapers.com/images/featured/2zmiybnpu693b69o.jpg', bio: 'The guy who is gonna become the next pirate king.')
second_user = User.create(name: 'Roronoa Zoro', photo: 'https://i.pinimg.com/736x/b1/1a/7e/b11a7e8ad1ef52c852b64d1c8ebf7f97.jpg', bio: 'The guy who is gonna become the worlds greatest Swordsmen')

first_post = Post.create(author: first_user, title: 'Demon Luffy', text: 'Contrary to popular belief, Demon Luffy is not simply a mythical creature. It has roots in a piece of pirate folklore from long ago, making it a legendary figure in the pirate world. Many sailors have sought to catch a glimpse of Demon Luffy, but few have succeeded. Demon Luffy is known for his incredible strength and ferocity, striking fear into the hearts of even the bravest of pirates. The first line of his tale, "Demon Luffy, the terror of the seas", speaks of his infamous reputation.')

second_post = Post.create(author: second_user, title: 'Zoro New Style', text: "It is well known that a pirate will be in awe of Zoro's sword skills when witnessing his new style. The essence of his new style lies in the fluid and unpredictable movements, as opposed to the traditional and rigid swordplay. Many pirates now aspire to learn from Zoro and adopt his new style, leading to its widespread popularity. Over the years, Zoro has honed and perfected his new style, sometimes through intense training, sometimes through battles at sea. Regardless, his new style remains unmatched.")

third_post = Post.create(author: second_user, title: 'Zoro Beast', text: 'Zoro Beast is a nickname earned by the legendary pirate, Roronoa Zoro. He was dubbed as such due to his exceptional sword skills and his relentless pursuit of strength. His reputation as a beast in battle precedes him, striking fear into the hearts of even the bravest of pirates. It is said that when Zoro unleashes his inner beast, he becomes an unstoppable force, slicing through anything that stands in his way. This has made him a highly sought after ally, and a formidable enemy.')

fourth_post = Post.create(author: second_user, title: 'Three Sword Style', text: 'The Three Sword Style, as the name suggests, is a fighting style wielded by Roronoa Zoro, the legendary pirate. It involves wielding three swords simultaneously, making him a force to be reckoned with on the battlefield. The key to this style lies in its versatility, allowing Zoro to adapt to any situation and overcome any obstacle. Many pirates have attempted to mimic this style, but none have been able to truly master it. To this day, the Three Sword Style remains a closely guarded secret, known only to the greatest of swordsmen.')

Comment.create(post: first_post, author: second_user, text: "Wow, Demon Luffy is something else!")
Comment.create(post: second_post, author: first_user, text: "Zoro's new style is unstoppable!")
Comment.create(post: third_post, author: second_user, text: "Zoro, the beast of the sea, unstoppable!")
Comment.create(post: fourth_post, author: first_user, text: "Three sword style, truly a sight to behold.")
Comment.create(post: first_post, author: first_user, text: "Demon Luffy, a true force to be reckoned with.")
Comment.create(post: fourth_post, author: second_user, text: "The three sword style, a work of art.")
Comment.create(post: first_post, author: second_user, text: "Luffy, a true demon on the high seas.")
Comment.create(post: second_post, author: first_user, text: "Zoro's new style, a game changer for sure.")
Comment.create(post: fourth_post, author: second_user, text: "The three sword style, a masterclass in combat.")

Like.create(post: first_post, author: second_user)
Like.create(post: first_post, author: first_user)
Like.create(post: first_post, author: first_user)
Like.create(post: fourth_post, author: second_user)
Like.create(post: third_post, author: second_user)
Like.create(post: second_post, author: first_user)
Like.create(post: fourth_post, author: second_user)
Like.create(post: fourth_post, author: second_user)