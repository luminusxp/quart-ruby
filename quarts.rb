#STEP 1: 
three_quart = [1,1,1]
five_quart = []
#STEP 2: 
five_quart.concat(three_quart.pop(3)); [five_quart, three_quart]
#STEP 3:
three_quart = [1,1,1]
#STEP 4:
five_quart.concat(three_quart.pop(2)); [five_quart.reduce(:+), three_quart.reduce(:+)]
#STEP 5: 
five_quart.pop(5)
#STEP 6: 
five_quart.concat(three_quart.pop(1)); [five_quart.reduce(:+), three_quart.reduce(:+)]
#STEP 7: 
three_quart = [1,1,1]
#STEP 8: 
five_quart.concat(three_quart.pop(3)); [five_quart.reduce(:+), three_quart.reduce(:+)]

p five_quart
p three_quart