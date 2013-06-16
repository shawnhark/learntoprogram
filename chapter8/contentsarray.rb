# table of contents as an array
puts
title = 'Table of Contents'
chapters = [['Getting Started     ', 1],
			['The Basics          ', 7],
			['Simple Tricks       ', 35],
			['Advanced Tricks     ', 57],
			['Using Your Knowledge', 93]]
puts title.center(50)
puts
chapnum = 1
chapters.each do |chap|
	name = chap [0]
	page = chap [1]
	start = 'Chapter ' + chapnum.to_s + ': ' + name
	finish = 'page ' + page.to_s
	puts start.ljust(25) + finish.rjust(30)
	chapnum = chapnum + 1
end
puts