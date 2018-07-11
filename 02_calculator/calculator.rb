#write your code here
def add(num1,num2)
	num1 + num2
end

def subtract(num1,num2)
	num1 - num2
end

def sum(array)
	array.reduce(0, :+)
end

def multiply(num1,num2,num3 = 1)	
		
	if num3 == nil
		num1 * num2
	end
	num1 * num2 * num3
end

def power(num1,num2)
		num1 ** num2
end	

def factorial(n)
	(1..n).reduce(1, :*)
end

