import java.util.Scanner;

public class Methods {

    // Method 1: Display Program Requirements
    public static void getRequirements() {

        System.out.println("Developer: Khushi Patel");
        System.out.println("Program Requirements:");
        System.out.println("\t1. Count number and types of characters from user-entered string.");
        System.out.println("\t2. Count: total, letters (upper/lower case), numbers, spaces, and other characters.");
        System.out.println("\tHint: Use isLetter(), isDigit(), isSpaceChar().");
        System.out.println();
    }

    // Method 2: Count Characters
    public static void countChar()
     {

        int letter = 0;
        int upper = 0;
        int lower = 0;
        int number = 0;
        int space = 0;
        int other = 0;

        Scanner sc = new Scanner(System.in);

        System.out.print("Please enter a string: ");
        String str = sc.nextLine();

        char[] ch = str.toCharArray();

        for (int i = 0; i < ch.length; i++) {

            if (Character.isLetter(ch[i])) {
                letter++;

                if (Character.isUpperCase(ch[i])) {
                    upper++;
                } else {
                    lower++;
                }

            } else if (Character.isDigit(ch[i])) {
                number++;

            } else if (Character.isSpaceChar(ch[i])) {
                space++;

            } else {
                other++;
            }
        }

        System.out.println("\nYour string: \"" + str + "\" has:");
        System.out.println("Total characters: " + str.length());
        System.out.println("Letters: " + letter);
        System.out.println("Uppercase letters: " + upper);
        System.out.println("Lowercase letters: " + lower);
        System.out.println("Numbers: " + number);
        System.out.println("Spaces: " + space);
        System.out.println("Other characters: " + other);

        sc.close();
    }
}