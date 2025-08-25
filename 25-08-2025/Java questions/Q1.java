//Question 1

import java.util.Scanner;
class grade
{
public static void grade(int marks){
    if (marks<25 && marks>0)
        System.out.println("Grade:F");
    
    else if(marks>=25 && marks<=45)
        System.out.print("Grade:E");
    
    else if(marks>=45 && marks<=50)
        System.out.print("Grade:D");
    
    else if(marks>=50 && marks<=60)
        System.out.print("Grade:C");
    
    else if(marks>=60 && marks<=80)
        System.out.print("Grade:B");
    
    else if(marks>=80 && marks<=100)
        System.out.print("Grade:A");
    
    else
        System.out.println("Enter a valid mark");
}

	public static void main(String[] args) {
		Scanner scan=new Scanner(System.in);
		System.out.print("Enter your mark: ");
		int num1=scan.nextInt();
		grade(num1);
	}
}

