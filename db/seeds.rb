# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Song.create(title: "Title 1", artist: "Artist 1")
Song.create(title: "Title 2", artist: "Artist 2")
Song.create(title: "Title 3", artist: "Artist 3")
Song.create(title: "Title 4", artist: "Artist 4")

Playlist.create(name: "Playlist 1", description: "Classics from 2010's")