$LOAD_PATH.unshift('.')
require "./tab.rb"



epenser = 0
i = 0
	
j=0
k=0
l=0
m=0
s=""
nb_ = 0
#pour le nombre d'underscore
n =0
o = 0
tiret = 0

tab_handle = []
Twit_tab.each do |handle|
	i+=1
	if handle.match(/\d/)
		j+=1
	#si vous voulez vérifier : puts handle	
	end

  if ((/^@[[:upper:]]/  =~ handle ) != nil)
	 m +=1
	#puts handle
  end
 if ((/[[:upper:]]/  =~ handle ) != nil)
	  l +=1
	#puts handle
  end



	if (handle.downcase.include? "aude" )
		k+= 1
	
	end
	if (handle.downcase.include? "@epenser")
		epenser = i 
	end
	string = handle.split(//)  

	string.each do |u| 

	if(u =="_")
		nb_ = nb_+ 1
	end
	end
 tab_handle << string.length


end

puts "il y à #{i} journalistes dans cet array" 
puts " #{j} handle contiennnent un numéro "
puts "#{k} handle contienne le mot Aude"
puts "#{m} handle commencent par une majuscule après @"
puts "#{l} handle contiennent au moins une majuscule"
puts "Il y a #{nb_} underscore dans tous les handle confondus"

#tri par ordre alphabetique
puts "liste des handle triés par ordre alphabetic"
Twit_tab.sort.each do |handle|
    puts handle
end

puts "#{epenser} est l'index de @epenser dans l'array" 

#affichage des 50 plus petits handle
puts "les 50 plus petit handle sont les suivants"
sorted_tab = Twit_tab.sort_by {|x| x.length}
fifty = 50;
short_handle = []
ind = 0
until short_handle.length == fifty do
	short_handle[ind] = sorted_tab[ind]
	ind += 1	
end

puts short_handle





