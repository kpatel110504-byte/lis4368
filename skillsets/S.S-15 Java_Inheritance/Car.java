public class Car extends Vehicle {
    private float speed;

    public Car() {
        super();
        System.out.println();
        System.out.println("Inside car default constructor.");
        speed = 100.0f;
    }

    public Car(String make, String model, int year, float s) {
        super(make, model, year);
        System.out.println();
        System.out.println("Inside car constructor with parameters.");
        speed = s;
    }

    public float getSpeed() {
        return speed;
    }

    public void setSpeed(float s) {
        speed = s;
    }

    @Override
    public void print() {
        super.print();
        System.out.println(", Speed: " + speed);
    }
}
