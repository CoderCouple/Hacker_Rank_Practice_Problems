import java.io.*;
import java.util.*;

public class HR_Arrays_1 {

	public static void main(String[] args) {

		String input[];
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Please entet the total number of elements of the Array :");
		int arraylength = sc.nextInt();
		input = new String[arraylength];
		
		System.out.println("Please enter the list of elements of the array (space seperated) :");
		for (int i=0; i<input.length; i++) {
			input[i]= sc.next();
		}
        
		System.out.println(input.length);
		for (int i=input.length-1; i>=0; i--) {
			
			System.out.print(input[i]);
			System.out.print(" ");
		}

	}
}
