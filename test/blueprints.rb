require 'machinist/active_record'

Album.blueprint do
  name   { 'Cross' }
  artist { Artist.new(:name => 'Justice') }
end

Artist.blueprint do
  name { 'Justice' }
end

Song.blueprint do
  path { 'Justice/Cross/Stress.mp3' }
end

SongPlay.blueprint do
  song_path { 'Justice/Cross/Stress.mp3' }
end

User.blueprint do
  login { 'holman' }
  email { 'email@example.com' }
end

Channel.blueprint do
  id { 1 }
  name { 'Floor 3' }
  mpd_port { '6600' }
  httpd_port { '8000' }
  color { 'red' }
end
