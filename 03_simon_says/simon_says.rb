#write your code here

def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, number = 2)
	string.concat(" ")
	(string * number).chop
end

def start_of_word(string, num = 2)
	string.slice(0,num)
end	

def first_word(string)
	array = string.split(" ")
	array[0]
end


def titleize(string)
	array1 = string.split(" ")
	i = 0
	array2 = []
	array3 = []
	while i < array1.length
		if array1[i] == nil
			break
		end
		if array1[i] == "over"
			array2.push(array1[i])
			i += 1
		end
		if array1[i].length > 3
			array2.push(array1[i].capitalize)
		else
			array2.push(array1[i])
		end 
		i += 1

		
	end	
	array2[0].capitalize!
	return array2.join(" ")



end

puts titleize("the bridge over the river kwai")
