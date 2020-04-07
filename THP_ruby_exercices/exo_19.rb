i = 50
tab = []
i.times do |j|
	tab << "fauxmail.#{j}@mail.fr"
	if (j%2==0)
		puts tab[j]
	end
end 


