# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "User 1", password: "123456")
User.create(username: "User 2", password: "123456")
User.create(username: "User 3", password: "123456")

Playlist.create(name: "90's Bangers", description: "Hits from 90's", user_id: 1)
Playlist.create(name: "In My Feelings", description: "90's R&B", user_id: 2)
Playlist.create(name: "Back in the 2010's", description: "Throwbacks from 2010's", user_id: 1)
Playlist.create(name: "What you missed last year...", description: "Annually updated with hits from the last year", user_id: 2)

Song.create(title: "Title 1", artist: "Artist 1", playlist_id: 1)
Song.create(title: "Title 2", artist: "Artist 2", playlist_id: 1)
Song.create(title: "Title 3", artist: "Artist 3", playlist_id: 2)
Song.create(title: "Title 4", artist: "Artist 4", playlist_id: 2)

Review.create(rating: "1", text: "Review 1", playlist_id: 1, user_id: 3)
Review.create(rating: "2", text: "Review 2", playlist_id: 1, user_id: 2)
Review.create(rating: "3", text: "Review 3", playlist_id: 2, user_id: 3)
Review.create(rating: "4", text: "Review 4", playlist_id: 2, user_id: 2)

