public class Vehicle {
    private String make;
    private String model;
    private int year;

    public Vehicle() {
        make = "My Make";
        model = "My Model";
        year = 1970;

        System.out.println("Inside vehicle default constructor.");
    }

    public Vehicle(String make, String model, int year) {
        this.make = make;
        this.model = model;
        this.year = year;

        System.out.println();
        System.out.println("Inside vehicle constructor with parameters.");
    }

    public String getMake() {
        return make;
    }

    public String getModel() {
        return model;
    }

    public int getYear() {
        return year;
    }

    public void setMake(String mk) {
        make = mk;
    }

    public void setModel(String md) {
        model = md;
    }

    public void setYear(int yr) {
        year = yr;
    }

    public void print() {
        System.out.print("Make: " + make + ", Model: " + model + ", Year: " + year);
    }
}
