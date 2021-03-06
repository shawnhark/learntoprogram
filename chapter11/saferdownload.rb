Dir.chdir '**/Temp/newimages'

pic_names = Dir['**/shawnharkness/Documents/Intro to Rails/Temp/images/*.{JPG,jpg, JPEG, jpeg}']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "
pic_number = 1

pic_names.each do |name|
  print '.' 

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
  "#{batch_name}#{pic_number}.jpg"
  end

while FileTest.exist? new_name
new_name += 'a'
new_name = new_name + '.jpg'
end

File.rename name, new_name

pic_number = pic_number + 1
end
puts
puts 'File transfers done.'

