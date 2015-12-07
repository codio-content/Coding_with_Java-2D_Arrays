public class Experiment {

    public static void main(String[] args) {
      
        int[][] multi = {{0,1,2},{0,1,2},{0,1,2}}; // Free to use
      
        String[][] people = {
          {"Name","Age","Color","Car"},
          {"Alice","21","Red", "Audi"},
          {"Tariq","12","Blue","Mike"},
          {"Bob","35","Green","Gayle"}
        };
      
        String str = "";
      
        for (int i = 1; i < people.length; i++ ) {
          str="";
          for (int j = 0; j < people[i].length; j++ ) {
            str += people[0][j] + "=" + people[i][j] + " ";
          }
          System.out.println(str);
        }
        

    }
}