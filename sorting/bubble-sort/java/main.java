import java.util.Random;

public class main {

    public static void main(String[] args)
    {
        int length = 50000;

        int[] numbers = new int[length];

        Random rand = new Random();

        for(int i = 0; i < length; i++) {
            numbers[i] = rand.nextInt(65535);
        }

        int temp = 0;
        for (int i = 0;i < length; i++) {
    		for (int j = 0; j< length-1; j++) {
    			if (numbers[j] < numbers[j+1]) {
        			temp = numbers[j];
        			numbers[j] = numbers[j+1];
        			numbers[j+1] = temp;
    			}
    		}
    	}

        // System.out.println("done");
    }

}
