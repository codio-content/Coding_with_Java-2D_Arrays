public class Desks {

    public static void main(String[] args) {
      
      // declare our variable
      String[][] desks = new String[][]{
        {"Adam", "Ben", "Carl", "David"},
        {"Edward", "Frank", "Georgia", "Helen"},
        {"Isabelle", "Joan", "Kelly", "Linda"}
      }; // set rows 0,1,2 to contain an array of their own

      for (int row = 0; row < desks.length; row++) {
        for (int column = 0; column < desks[row].length; column++) {
          System.out.println("row[" +row+ "]col[" +column+ "]= " +desks[row][column]);
        }
      }


    }
}