import java.util.List;
import java.util.ArrayList;

public class Dynamic {

    public static void main(String[] args) {
      
      // A couple of variables for fun
      int rows = 5;
      int cols = 4;
      
      // Create an empty array first
      // This gives us our first dimension
      List<List<String>> array = new ArrayList<List<String>>(rows);

      // We work through the rows first, dimension 1
      for (int i=0; i < rows; i++ ) {
        // Make array[i] an empty array
        array.add(new ArrayList<String>());
        // This is the 2nd dimension
        for (int j=0; j < cols; j++ ) {
          // Now we can write to a 'cell'
          // You could read [i] as the row
          // and [j] as the column
          array.get(i).add( "("+ i + "," + j +")" );
        }
      }

      System.out.println(array);


    }
}