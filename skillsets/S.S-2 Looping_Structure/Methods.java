public class Methods {
//Create Method without returning any value (without object)
public static void getRequirements(){
// display operational messages
System.out.println("Developer: Khushi Patel");
System.out.println("Program loops through array of floats.");
System.out.println("Use following values: 1.0, 2.1, 3.2., 4.3, 5.4.");
System.out.println("Use following loop structures: for, enhanced for, while, do...while.");
System.out.println(")nNote: Pretest loops: for, enhanced for, while, Posttest loop: do...while.");
System.out.println(); // print blank line
}
public static void arrayLoops(){
/*
    Java example:
//declare float array, with initial size of 5
float[]] myFloats = new float[5];
//populate array (zero-based)
myFloats[O] = 1.0f;
myFloats[1] = 2,1f;
myFloats[2] = 3.2f;
myFloats[3) = 4.3f;
myFloats[4] = 5.4f;
*/
//Or, populate array upon creation...
//Java style float] myFloats
//C++ style float myFloats]
float myFloats[] = {1.0f, 2.1f, 3.2f, 4.3f, 5.4f};
System.out.println("for loop:");
for(int i = 0; i < myFloats.length; i++)
System.out.println(myFloats[i]);
//Note: enhanced for loop does not require an iterator (e.g., x or i or 1).
//Loop iterates through each element of array/collection.
System.out.println("/n Enhanced for loop:");
for(float test: myFloats)
{
System.out.println(test);
}
System.out.println("/n while loop:");
int i=0;
while (i < myFloats.length){
System.out.println(myFloats[i]);
i++;
}
//reassign 0 to test variable
System.out.println("/n do...while loop:");
do{
    System.out.println(myFloats[i]);
    i++;
}
while (i<myFloats.length);
}
}