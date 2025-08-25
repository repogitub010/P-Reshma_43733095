import java.util.Scanner;
class chksquare
{
    public static void main(String[] args) {
		Scanner scan=new Scanner(System.in);
		System.out.print("Enter the length of the rectangle: ");
		int l=scan.nextInt();
		System.out.print("Enter the breadth of the rectangle: ");
		int b=scan.nextInt();
		if (l==b){
		    System.out.println("It is a square.");
		}
		else
		    System.out.println("It is not a square.");
	}
}