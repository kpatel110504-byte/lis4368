import java.util.Scanner;

public class VehicleDemo {
    public static void main(String[] args) {
        String mk = "";
        String md = "";
        int yr = 0;
        float sp = 0.0f;
        Scanner sc = new Scanner(System.in);

        System.out.println("/////Below are base class default constructor values://///");
        Vehicle v1 = new Vehicle();
        System.out.println();
        System.out.println("Make = " + v1.getMake());
        System.out.println("Model = " + v1.getModel());
        System.out.println("Year = " + v1.getYear());

        System.out.println();
        System.out.println("/////Below are base class user-entered values://///");
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
        System.out.println("/////Below are derived class default constructor values://///");
        Car c1 = new Car();
        System.out.println();
        System.out.println("Make = " + c1.getMake());
        System.out.println("Model = " + c1.getModel());
        System.out.println("Year = " + c1.getYear());
        System.out.println("Speed = " + c1.getSpeed());

        System.out.println();
        System.out.println("Or...");
        c1.print();

        System.out.println();
        System.out.println();
        System.out.println("/////Below are derived class user-entered values://///");
        System.out.print("Make: ");
        mk = sc.nextLine();
        System.out.print("Model: ");
        md = sc.nextLine();
        System.out.print("Year: ");
        yr = Integer.parseInt(sc.nextLine());
        System.out.print("Speed: ");
        sp = Float.parseFloat(sc.nextLine());

        Car c2 = new Car(mk, md, yr, sp);
        System.out.println();
        System.out.println("Make = " + c2.getMake());
        System.out.println("Model = " + c2.getModel());
        System.out.println("Year = " + c2.getYear());
        System.out.println("Speed = " + c2.getSpeed());

        System.out.println();
        System.out.println("Or...");
        c2.print();

        sc.close();
    }
}
