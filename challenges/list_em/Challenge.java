public class Challenge {

    public static void main(String[] args) {
      
        // Get input from the command line arguments
        int[][] inputArray = new int[][]{
          {Integer.parseInt(args[0]), Integer.parseInt(args[1]), Integer.parseInt(args[2])},
          {Integer.parseInt(args[3]), Integer.parseInt(args[4]), Integer.parseInt(args[5])},
          {Integer.parseInt(args[6]), Integer.parseInt(args[7]), Integer.parseInt(args[8])}
        };

        // Your code goes here
        
        // Initialize a grand total counter
        int gtotal= 0;

        // for each row
        for ( int row=0; row < inputArray.length; row++ ) {
          // total this row up
          int rowTotal= 0;
          for ( int col=0; col < inputArray[row].length; col++ ) {
            // add this element to the row total
            rowTotal += inputArray[row][col];
          }
          // output this row total
          System.out.println(rowTotal);

          // add this row to the grand total
          gtotal += rowTotal;
        }
        // output the grand total
        System.out.println(gtotal);

       
        
    }
}
