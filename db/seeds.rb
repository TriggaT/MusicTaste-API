# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Playlist.create(name: "Playlist 1", description: "Classics from 2010's")
Playlist.create(name: "Playlist 2", description: "Classics from 2000's")

Song.create(title: "Title 1", artist: "Artist 1", playlist_id: 1)
Song.create(title: "Title 2", artist: "Artist 2", playlist_id: 1)
Song.create(title: "Title 3", artist: "Artist 3", playlist_id: 2)
Song.create(title: "Title 4", artist: "Artist 4", playlist_id: 2)

