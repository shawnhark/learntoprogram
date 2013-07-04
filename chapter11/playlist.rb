all_mp4 = shuffle(Dir['**/*.mp4'])
File.open 'playlist.m3u', 'w' do |f|
all_mp4.each do |ogg|
f.write mp4+"\n"
end
end
puts 'Done!'