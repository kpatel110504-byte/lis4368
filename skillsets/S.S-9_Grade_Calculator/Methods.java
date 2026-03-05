import java.util.Scanner;

public class Methods {
    public static void getRequirements() {
        System.out.println("Author: Khushi Patel");
        System.out.println("Program Requirements:");
        System.out.println("1. Returns letter grade, based upon user-entered average score.");
        System.out.println("2. Program checks for non-numeric and out of range values.");
        System.out.println("Note: Program is accurate to 6th fraction digit(i.e., 6 digits right of the decimal point).");
        System.out.println();
    }

    public static void getScore(){
        Scanner sc = new Scanner(System.in);
        double score = 0.0;

        System.out.print("Please enter average score (0.0 - 100.0): ");
        while(!sc.hasNextDouble()){
            System.out.println("Not Valid Number!\n");
            sc.next();
            System.out.println("Please try again. Enter average score (0.0 - 100.0): ");
        }
        score = sc.nextDouble();
        getGrade(score);

        sc.close();
    }

    public static void getGrade(double score){
        String grade = "";
        if(score < 0.0 || score > 100.0){
            System.out.println("Score must be between 0.0 and 100.0.\n");
            getScore();;
        }else{
                

        //FSU Grading Scale
        if(score <60 && score>=0){
            System.out.println("Grade: F");
            grade = "F";
        } else if(score < 63 && score>=60){
            System.out.println("Grade: D-");
            grade = "D-";
        } else if(score < 67 && score>=63){
            System.out.println("Grade: D");
            grade = "D";
        } else if(score < 70 && score>=67){
            System.out.println("Grade: D+");
            grade = "D+";
        } else if(score < 73 && score>=70){
            System.out.println("Grade: C-");
            grade = "C-";
        } else if(score < 77 && score>=73){
            System.out.println("Grade: C");
            grade = "C";
        } else if(score < 80 && score>=77){
            System.out.println("Grade: C+");
            grade = "C+";
        } else if(score < 83 && score>=80){
            System.out.println("Grade: B-");
            grade = "B-";
        } else if(score < 87 && score>=83){
            System.out.println("Grade: B");
            grade = "B";
        } else if(score < 90 && score>=87){
            System.out.println("Grade: B+");
            grade = "B+";
        } else if(score < 93 && score>=90){
            System.out.println("Grade: A-");
            grade = "A-";   
        } else{
            System.out.println("Grade: A");
            grade = "A";
        }

        System.out.printf("\n Score entered: %.6f%n", score);
        System.out.printf("Final grade: %s%n", grade);
    }
}


}
