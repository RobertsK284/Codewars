=begin
tram(4, {0, 2, 4, 4}, {3, 5, 2, 0}) ==> 6

Tram begins with 0 passengers
first number is n number of stops
first array is people exiting
second array is people boarding

calculate tram's minimum capacity such that 
number never exceeds this

minimum = 0

for i in 1..n
next if (minimum + onboarding[i] - descending[i]) > minimum 
minimum = minimum + onboarding[i] - descending[i]

end

=end

def tram(stops, descending, onboarding)
  minimum = 0

n = [stops, descending.length, onboarding.length].sort!

for i in 1..n[0]
next if minimum >= (minimum + onboarding[i-1] - descending[i-1])
minimum = minimum + onboarding[i-1] - descending[i-1]
end
return minimum
end
