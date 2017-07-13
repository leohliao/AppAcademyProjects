# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
user1 = User.create(email: "kat@yahoo.com")
user2 = User.create(email: "kit@gmail.com")
user3 = User.create(email: "ket@aol.com")
user4 = User.create(email: "kot@outlood.com")

ShortenedUrl.destroy_all
url1 = ShortenedUrl.create_shortened_url(user1, "www.saho.com/netflix/is/fun/to/watch")
url2 = ShortenedUrl.create_shortened_url(user4, "www.hg.com/hulu/is/too/expensive/to/subscribe")


Visit.destroy_all
visit1 = Visit.create(user_id: user1.id, url_id: url1.id)
visit2 = Visit.create(user_id: user3.id, url_id: url1.id)
visit3 = Visit.create(user_id: user2.id, url_id: url1.id)
visit4 = Visit.create(user_id: user1.id, url_id: url2.id)
visit5 = Visit.create(user_id: user4.id, url_id: url2.id)
visit6 = Visit.create(user_id: user2.id, url_id: url2.id)
visit7 = Visit.create(user_id: user4.id, url_id: url1.id)
