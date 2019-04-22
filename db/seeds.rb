# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Start of seeding..."
Podcast.destroy_all
5.times do
  params = {
    name: Faker::App.name,
    genre: Faker::Music.genre,
    explicit_content: [true, false].sample()
  }
  p "Creating Podcast: #{params[:name]}"
  generated_podcast = Podcast.new(params)
  generated_podcast.save

  5.times do
    params = {
      title: Faker::App.name,
      show_note: Faker::Lorem.sentence,
      mp3_file: Faker::File.file_name('path/to', nil, 'mp3'),
      podcast_id: generated_podcast.id
    }
    p "Creating Episode: #{params[:title]}"
    episode = Episode.new(params)
    episode.save
  end
end
