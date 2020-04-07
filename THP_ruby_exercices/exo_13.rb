puts "veuillez saisir votre année de naissance"
year = gets.chomp.to_i

while 2021 != year  do
	puts "#{year}"
	year +=1 
end
