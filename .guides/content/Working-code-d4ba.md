On the left we have some code that does the following.

## Define and populate an array
```javascript
people = [ ['Name', 'Age', 'Color', 'Car'], ['Alice',23,'Blue','Audi'],
['Tariq',18,'Red','Mini'], ['Bob',31,'Green','Renault'] ]
```

## Lengths
Notice that in the outer loop, we use `i < people.length`. This tells us the length of the first dimension.

For the inner loop, we use `j < people[i].length`. This tells us the length of the internal array for row `i`, in other words, the number of columns in the current row.


## Loop through everything
You can see that we actually have a *nested loop* inside another loop.

- The first loop iterates through each *row*. So when it enters the loop for the first time, it is grabbing Alice's data.
- The second loop then loops through all of the array elements fro Alice's data and builds up a single string 

## Things to note

- Our example data contains some field names. We put this in here so we can build a nice, meaningful string.
- We also initialise our empty string within the internal loop.
- The outer loop starts at index 1 because we don't want to output the field names (although we do reference the field names in the inner loop)


