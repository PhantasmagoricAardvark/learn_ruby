#write your code here

def ftoc(f)
	(f - 32) * 5/9

end


def ctof(c)
	(c.to_f * 9/5).to_f + 32
end

puts ctof(37)

