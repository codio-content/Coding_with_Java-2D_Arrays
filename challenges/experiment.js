// Creating a 2D array
var people = [ 
  ['Name', 'Age', 'Color', 'Car'], 
  ['Alice',23,'Blue','Audi'],
  ['Tariq',18,'Red','Mini'], 
  ['Bob',31,'Green','Renault'] 
]

// a string we will populate
var str= ''

// Looping through both dimensions
for (var i=1; i < people.length; i++ ) {
  
  for (var j=0, str=''; j < people[i].length; j++ ) {
    str += people[0][j] + '=' + people[i][j] + ' '
  }
  console.log(str)
  
}


