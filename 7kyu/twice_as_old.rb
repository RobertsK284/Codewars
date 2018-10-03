=begin
    Your function takes two arguments:

current father's age (years)
current age of his son (years)
Сalculate how many years ago the father was twice as old as his son (or in how many years he will be twice as old).

dad + n = 2 * (son + n)
dad + n = 2 * son + 2 * n
dad = 2 * son + 2 * n - n
dad - 2 * son = n

=end

def twice_as_old(dad, son)
    n = (dad - 2 * son).abs 
end