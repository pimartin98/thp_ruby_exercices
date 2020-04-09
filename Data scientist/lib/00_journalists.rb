
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
		epenser = 
	end
	string = handle.split(//)  

	string.each do |u| 

	if(u =="_")
		nb_ = nb_+ 1
	end

end


end

puts "il y à #{i} journalistes dans cet array" 
puts " #{j} handle contiennnent un numéro "
puts "#{k} handle contienne le mot Aude"
puts "#{m} handle commencent par une majuscule après @"
puts "#{l} handle contiennent au moins une majuscule"
puts "Il y a #{nb_} underscore dans tous les handle confondus"

Twit_tab.sort.each do |handle|
    puts handle
end

puts "#{epenser}" 
