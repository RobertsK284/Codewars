def reverse_number(n)
 n < 0 ? neg = -1: neg = 1
    n = n.to_s.reverse.to_i * neg
  return n
end