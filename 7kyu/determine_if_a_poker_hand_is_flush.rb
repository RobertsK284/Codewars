def is_flush?(hand)

	first_suit = hand[0][-1]

	for k in 1..4
		if hand[k][-1] != first_suit
			return false
		end
	end
	
	return true
end

puts is_flush?(["AS", "3S", "9S", "KS", "4S"])
puts is_flush?(["AD", "4S", "7H", "KC", "5S"])
puts is_flush?(["AD", "4S", "10H", "KC", "5S"])
puts is_flush?(["QD", "4D", "10D", "KD", "5D"])
