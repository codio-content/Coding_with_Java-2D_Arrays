{Check It!|assessment}(test-2304874676)


|||guidance
### Solution
```javascript

// Get input from the command line arguments
var inputArray= process.argv.slice(2)

// split up the arguments into a 2d array
for(var i=0; i < inputArray.length; i++){
  inputArray[i]= inputArray[i].split(",")
}

// Your code goes here
console.log(inputArray[1][2])

```
|||