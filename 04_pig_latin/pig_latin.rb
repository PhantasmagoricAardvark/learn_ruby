#write your code here

def matchesGen(string)
	i = 0
	matches = ""


	while i < string.length	
		if string[i].match(/b|c|d|h|t|r|s|p|f/) != nil
			matches.concat(string[i].match(/b|c|d|h|t|r|s|p|f/).to_s) 
		elsif string[i].match(/q|u/) != nil
			matches.concat((string[i].match(/q|u/)).to_s)
		else
			break
		end
			
		i += 1	
	end

	puts matches.length
	puts "matches is " + matches
	return matches
end


def translateMany(string)
	i = 0
	many = string.split(" ")
	puts "many is " + many.to_s
	array1 = []


	while i < many.length


		if many[i][0].match(/a|e|i|o|u/) != nil
			array1.push(many[i].concat("ay"))
		end

		if many[i][0].match(/b|c|d|h|t|r|s|p|f/) != nil || string.match(/qu/)
		
			matches = matchesGen(many[i])
			index1 = many[i].index(matches)
 			sliced = many[i].slice(matches.length,many[i].length)
	 		array1.push(sliced.concat(matches).concat("ay"))
		end

		i += 1

	end

	array1.join(" ")

end


def translate(string)
	i = 0
	matches = ""


	many = string.split(" ")
	
	if many.length > 1
		return translateMany(string)
		
	end
	
	if string[0].match(/a|e|i|o|u/) != nil
		return string.concat("ay")

	end

	if (string[0].match(/b|c|d|h|t|r|s|p/) != nil) || string.match(/qu/)
		
		matches = matchesGen(string)

		index1 = string.index(matches)

 		sliced = string.slice(matches.length, string.length)
 		return sliced.concat(matches).concat("ay")
	end
end

puts translate("the quick brown fox")

