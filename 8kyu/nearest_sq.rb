def nearest_sq(n)
  a = 0
  squares = []
  
  until a**2 > n
  	a += 1
  	squares.push(a**2)
  	end

 (squares[-1] - n).abs > (squares[-2] - n).abs ? squares[-2] : squares[-1]
 
  end

