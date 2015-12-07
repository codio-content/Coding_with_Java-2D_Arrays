{Check It!|assessment}(test-667129063)

|||guidance
### Solution
```javascript

// Get our command line arguments
var B = process.argv.pop()
var A = process.argv.pop()


// Your code goes here
var result = []
for (var i=0; i < A; i++ ) {
  result[i] = []
  for (var j=0; j < B; j++ ) {
    result[i][j] = 'R' + i + 'C' + j
  }
}
console.log(result)
```
|||