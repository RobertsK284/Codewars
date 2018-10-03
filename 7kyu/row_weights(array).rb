def row_weights(array) 
team_1_wt = 0 team_2_wt = 0
 
for i in 0...array.length
 i % 2 == 0 ? team_1_wt += array[i] : team_2_wt += array[i] 
end 

return [team_1_wt, team_2_wt] 

end

row_weights([20, 3, 90, 40])