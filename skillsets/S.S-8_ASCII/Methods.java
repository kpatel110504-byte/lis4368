import java.util.Scanner;

public class Methods {

    // Method 1: Display requirements
    public static void getRequirements() {

        System.out.println("Developer: Khushi Patel");
        System.out.println("Program Requirements:");
        System.out.println("\t1. Write an application that displays integer equivalents of uppercase letters.");
        System.out.println("\t2. Display character equivalents of ASCII values 48 - 122.");
        System.out.println("\t3. Display the character equivalent of ASCII value user input.");
        System.out.println("\tNote: Compare answers to http://www.asciitable.com/");
        System.out.println();
    }

    // Method 2: ASCII program
    public static void getAscii() {

        int num = 0;
        boolean isValidNum = false;
        Scanner sc = new Scanner(System.in);

        // Print ASCII for A-Z
        System.out.println("Printing characters A-Z as ASCII values:");
        for (char character = 'A'; character <= 'Z'; character++) {
            System.out.printf("Character %c has ASCII value %d\n", character, (int) character);
        }

        System.out.println();

        // Print ASCII 48–122 as characters
        System.out.println("Printing ASCII values 48-122 as characters:");
        for (num = 48; num <= 122; num++) {
            System.out.printf("ASCII value %d has character value %c\n", num, (char) num);
        }

        System.out.println();

        // Allow user input
        System.out.println("Allowing user ASCII value input:");

        while (!isValidNum) {

            System.out.print("Please enter ASCII value (32 - 127): ");

            if (sc.hasNextInt()) {
                num = sc.nextInt();
                isValidNum = true;
            } else {
                System.out.println("Invalid input. ASCII value must be a number.\n");
                sc.next(); // discard wrong input
            }

            if (isValidNum && (num < 32 || num > 127)) {
                System.out.println("ASCII value must be >= 32 and <= 127.\n");
                isValidNum = false;
            }
        }

        // Display result
        System.out.printf("ASCII value %d has character value %c\n", num, (char) num);

        sc.close();
    }
}