import java.util.List;
import java.util.ArrayList;

public class Challenge {

    public static void main(String[] args) {
      
      // Get our command line arguments
      int A = Integer.parseInt(args[0]);
      int B = Integer.parseInt(args[1]);

      // Your code goes here
      List<List<String>> result = new ArrayList<List<String>>(A);
      
      for (int i=0; i < A; i++ ) {
        result.add(new ArrayList<String>());
        for (int j=0; j < B; j++ ) {
          result.get(i).add( "R"+ i + "C" + j );
        }
      }

      System.out.println(result);
       
    }
}
