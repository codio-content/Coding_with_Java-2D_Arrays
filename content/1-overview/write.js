
// Create an empty array first
// This gives us our first dimension
var array = []

// A couple of variables for fun
var rows = 5
var cols = 4

// We work through the rows first, dimension 1
for (var i=0; i < rows; i++ ) {
  // Make array[i] an empty array
  // This is the 2nd dimension
  array[i] = []
  for (var j=0; j < cols; j++ ) {
    // Now we can write to a 'cell'
    // You could read [i] as the row
    // and [j] as the column
    array[i][j] = i + ',' + j
  }
}

console.log(array)
