{Run the code}(content/Desks/Desks.sh)

Have a look at the code on the left. This is what it does:

## Define an array
```java
6  String[][] desks = new String[][]{};
```
To create a 2D array, we fill the regular array `desks` with an array for each element.

## Populate the array
There are a number of equivalent ways to populate the same 2D array.

In the sample code, the 2D array has been populated like this:

```java
6 String[][] desks = new String[][]{
7   {"Adam", "Ben", "Carl", "David"},
8   {"Edward", "Frank", "Georgia", "Helen"},
9   {"Isabelle", "Joan", "Kelly", "Linda"}
10 };
```

Another way to populate the 2D array would be like this:

```java
String[][] desks = new String[3][];

desks[0] = new String[4];
desks[0][0] = "Adam";
desks[0][1] = "Ben";
desks[0][2] = "Carl";
desks[0][3] = "David";

desks[1] = new String[4];
desks[1][0] = "Edward";
desks[1][1] = "Frank";
desks[1][2] = "Georgia";
desks[1][3] = "Helen";
```

Remember that when you define a new array in Java, the array _dimensions_ are being set and cannot be changed afterwards unless you create a copy of the array or work with ArrayLists. More on this later. 

To make it simpler, everything in the example above could go on a single line, then the code would look like this:
```java
String[][] desks = new String[][]{{"Adam", "Ben", "Carl", "David"}, {"Edward", "Frank", "Georgia", "Helen"}, {"Isabelle", "Joan", "Kelly", "Linda"}};
```



## Lengths
Have a look at the outer loop, it uses `row < desks.length`. This tells us the length of the first dimension.

```java
13 for (int row = 0; row < desks.length; row++) {
```

For the inner loop, we use `column < desks[row].length`. 

```java
15 for (int column = 0; column < desks[row].length; column++) {
```

This tells us the length of the internal array for row `row`, in other words, the number of columns in the current row.


## Loop through everything
You can see that we actually have a *nested loop* inside another loop.

```java
13 for (int row = 0; row < desks.length; row++) {
```
- The first loop iterates through each *row*. So when it enters the loop for the first time, it is grabbing data for the first row.

```java
15 for (int column = 0; column < desks[row].length; column++) {
```
- The second loop then loops through all the *columns*.

## Reference an element
If we reference the array as `desks[1][2]` we will get the value  `"Georgia"`. In this section we reference the row and column we want to print.
```java
16 System.out.println("row[" +row+ "]col[" +column+ "]= " +desks[row][column]);
```

