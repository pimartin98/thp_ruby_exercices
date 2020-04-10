
$LOAD_PATH.unshift('.')
require "./tab.rb"
hash = {}
ind = 0
Currencies_tab.each do |i|
       hash [i] = Price_tab[ind]
      ind +=1
end       


#puts hash
price0 = "$1.08"

price = price0.gsub("$","")
puts "le prix en float :" 
puts price.to_f

comparable_hash = {}
comparable_hash2 = {}

hash.each do |name, price|
	comparable_hash [name] = (price.gsub("$","").to_f*(-1))
	comparable_hash2 [name] = price.gsub("$","").to_f

end
ind1=0
key = nil 
value = nil 

comparable_hash.each do 
	if comparable_hash.values[ind1] == comparable_hash.values[ind1+1]
	       
		ind1 +=1
	else 
		key = comparable_hash.keys[ind1]
		value = comparable_hash.values[ind1]
	end
end

puts "La plus grosse crypto monnaie est le "+key+ " qui vaut #{value*(-1)}"

ind2=0
key2 = nil 
value2 = nil 

comparable_hash2.each do 
	if (comparable_hash.values[ind2] > comparable_hash.values[ind2+1])
	       
		ind2 +=1
	else 
		key2 = comparable_hash.keys[ind2]
		value2 = comparable_hash.values[ind2]
	end
end

puts "La plus petite crypto monnaie est le "+key2+ " qui vaut #{value2*(-1)}"


