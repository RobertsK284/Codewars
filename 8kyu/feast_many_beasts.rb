def feast(beast, dish)
	beast.slice(0) == dish.slice(0) && beast.slice(beast.length - 1) == dish.slice(dish.length - 1)
end