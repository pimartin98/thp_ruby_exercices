puts "Bonjour, en quelle année êtes vous né ?"
year = gets.chomp.to_i

if (2017 > year)
	puts "en 2017, vous aviez #{2017 - year} ans "
else
	puts "vous n'étiez pas né"
end
