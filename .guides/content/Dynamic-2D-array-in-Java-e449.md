Remember Java _Lists_ and _ArrayLists_?

Look at the example code on the left. The code creates a new `List` and populates it with some rows and columns.

Each 'cell' in the array is filled when the code runs.

{Run the code}(content/Dynamic/Dynamic.sh)

### Why are we declaring a `String` type if we are working with integer values?

```java
14 List<List<String>> array = new ArrayList<List<String>>(rows);
```

For the sake of the example, we are wrapping the resulting elements of each of the columns in string brackets:

```java
25 array.get(i).add( "("+ i + "," + j +")" );
```

Java works by not mixing different data types, this is why we declare variables as `int name` or `String name` for example.

If we want to print the result as it is on the code run, then, we need to set our initial `List` to hold _ArrayLists_ with `String` values.