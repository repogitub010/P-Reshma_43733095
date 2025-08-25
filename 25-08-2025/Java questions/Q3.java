import java.util.Scanner;
class AbsoluteValue {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        System.out.print("Enter a number: ");
        int num = scan.nextInt();
        int absvalue;
        if (num < 0) {
            absvalue = -num;
        } else {
            absvalue = num;
        }
        System.out.println("Absolute value: " + absvalue);
    }
}
