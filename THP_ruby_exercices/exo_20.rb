puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "
nb = gets.chomp.to_i
puts "Voici la pyramide : "
(nb+1).times do |i|
	
	i.times do 
	      print "#"
	end	      

	puts " "
end
