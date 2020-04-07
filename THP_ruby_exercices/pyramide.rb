puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "
nb = gets.chomp.to_i
puts "Voici la pyramide : "
i = 1 
(nb+1).times do |i|
	
	(nb-i).times do
	print " "
	end

	i.times do 
		print "#"
	end
	puts " "
end

