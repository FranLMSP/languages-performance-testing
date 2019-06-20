import java.util.Random;
import java.util.Arrays; 

public class main {

    public static void main(String[] args)
    {
        int length = 50000;

        int[] numbers = new int[length];

        Random rand = new Random();

        for(int i = 0; i < length; i++) {
            numbers[i] = rand.nextInt(65535);
        }

        Arrays.sort(numbers);

        // System.out.println("done");
    }

}
