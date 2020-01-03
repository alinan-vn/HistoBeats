# artist_list = {
#     name: ['the Strokes', 'Royal Blood', 'CRX', 'the Voidz', 'Muse'],
#     year: [1999, 2013, 2018, 2015, 1997],
#     bio: ["Could've made it big, if they had chosen to sell out like all the boy bands of the early 2000's and every current pop-star. They have a near perfect catolog of albums, with a perfect catalog of songs!",
#     "Dope band from Europe. Too bad they aren't as big as they should be. Hopefully they'll come out with new material soon.",
#     "the Strokes' guitarist: Nick Valensi made this band because the Strokes take too many years to release new material, and he finally decided to say f*** it, I'll do it myself. Good stuff Nick.", 
#     "the Strokes' singer: Julian Casablancas decided that instead of focusing on his first band, it would make sense to make another band and focus on that. That band is The Voidz. They have a lot of dope stuff too.",
#     "Coming straight from Europe, this gucci band is pretty gucci. If you love wub wubz this band is for you."],
#     password: ["Password6", "Password7", "Password8", "Password9", "Password10"],
#     password_confirmation: ["Password6", "Password7", "Password8", "Password9", "Password10"]
# }

# i = 0
# while i != 5 do 
#     Artist.create(name: artist_list[:name][i], year: artist_list[:year][i], artist_bio: artist_list[:bio][i], password: artist_list[:password][i], password_confirmation: artist_list[:password_confirmation][i])
#     i += 1
# end

# genres_list = ["Garage Rock", "Hard Rock", "Alternative Rock", "80's Rock", "House Rock", "Indie Rock", "Punk Rock"]

# genres_list.each do |g|
#     Genre.create(name: g)
# end

# # title, link, artist, genre
# songs_list = [
#     ["You Only Live Once", "https://www.youtube.com/embed/pT68FS3YbQ4", 1, 1],
#     ["Tap Out", "https://www.youtube.com/embed/-7PINAYE4z4", 1, 4],

#     ["Lights Out", "https://www.youtube.com/embed/ZSznpyG9CHY", 2, 2],
#     ["How Did We Get So Dark", "https://www.youtube.com/embed/sbx95gBb5HM", 2, 7],

#     ["walls", "https://www.youtube.com/embed/FcBIPurP5yo", 3, 3],
#     ["New Obsession", "https://www.youtube.com/embed/W2V0maT0lGs", 3, 4],

#     ["Qyurryus", "https://www.youtube.com/embed/-NHmwmqB_H0", 4, 3],
#     ["the Eternal Tao", "https://www.youtube.com/embed/B1Ivofc20x0", 4, 3],

#     ["Panic Station", "https://www.youtube.com/embed/6uBK5kvakD8", 5, 5], 
#     ["The Small Print", "https://www.youtube.com/embed/K3JPO-K-vrY", 5, 6]
# ]

# songs_list.each do |array|
#     Song.create(title: array[0], link: array[1], artist_id: array[2], genre_id: array[3])
# end

# # name, bio, password
# users_list = [
#     ["Mr. F", "one cool cat", "Password1", "Password1"],
#     ["Oscar", "brother of George", "Password2", "Password2"],
#     ["George", "brother of Oscar", "Password3", "Password3"],
#     ["Michael", "son of George and Lucille", "Password4", "Password4"],
#     ["Lucille", "wife of George", "Password5", "Password5"]
# ]

# users_list.each do |array|
#     User.create(name: array[0], user_bio: array[1], password: array[2], password_confirmation: array[3])
# end

# # rating, comment, user, song
# reviews_list = [
#     [3, "Good song, but not their best.", 1, 1],
#     [4, "Very nice, very cool", 1, 3],
#     [3, "Dope solo. Needs better lyrics though.", 2, 5],
#     [5, "Very nice and original song. Strong bollywood feelz", 2, 7],
#     [4, "Funk-eeeee", 3, 9],
#     [5, "One of their best imo", 3, 2],
#     [5, "Very fun, very cool. Need more, it sustains me", 4, 4],
#     [4, "Again, amazing solo. Simply, a very nostalgic call to a simpler time", 4, 6],
#     [5, "Interesting keys and song. Needs a more original chord progression but no real complaints here", 5, 8],
#     [4, "Hidden gem", 5, 10]
# ]

# reviews_list.each do |array| 
#     Review.create(rating: array[0], comment: array[1], user_id: array[2], song_id: array[3])
# end

# # name, link, 1
# strokes_songs = [
#     "Is This it", "The Modern Age", "Soma", "Take It or Leave It", "Trying Your Luck", "Someday", "Between Love and Hate", "Meet Me in the Bathroom", "Machuu Pichuu", "You're So Right", "80's Comedown Machine", "50/50", "Call It Fate, Call It Karma"
# ]
# strokes_songs.each {|s| Song.create(title: s, genre_id: 1, artist_id: 1)}