import java.util.Scanner;

public class VehicleDemo {
    public static void main(String[] args) {
        String mk = "";
        String md = "";
        int yr = 0;
        Scanner sc = new Scanner(System.in);

        System.out.println("/////Below are default constructor values://///");
        Vehicle v1 = new Vehicle();
        System.out.println();
        System.out.println("Make = " + v1.getMake());
        System.out.println("Model = " + v1.getModel());
        System.out.println("Year = " + v1.getYear());

        System.out.println();
        System.out.println("/////Below are user-entered values://///");
        System.out.print("Make: ");
        mk = sc.nextLine();

        System.out.print("Model: ");
        md = sc.nextLine();

        System.out.print("Year: ");
        yr = Integer.parseInt(sc.nextLine());

        Vehicle v2 = new Vehicle(mk, md, yr);
        System.out.println();
        System.out.println("Make = " + v2.getMake());
        System.out.println("Model = " + v2.getModel());
        System.out.println("Year = " + v2.getYear());

        System.out.println();
        System.out.println("/////Below using setter methods to pass literal values, then print() method to display values://///");
        v2.setMake("Chevrolet");
        v2.setModel("Corvette Z06");
        v2.setYear(2023);
        v2.print();

        sc.close();
    }
}
