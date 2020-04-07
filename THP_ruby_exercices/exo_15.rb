puts "Veuillez entrer votre année de naissance"

date = gets.chomp.to_i
i = date
j = 0
while i != 2021 do 

	if (i ==2020)
		puts "aujourd'hui, vous avez #{2020-date} ans"
	else

	puts "En #{i} ,vous aviez #{j} ans"

	end
	i +=1
	j += 1
end
