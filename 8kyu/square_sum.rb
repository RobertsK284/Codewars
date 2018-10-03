def squareSum(numbers) 
	sum = 0 
		numbers.each do |number| 
		sum += number**2 
		end 
	return sum 
end
