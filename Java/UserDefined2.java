import java.util.Scanner;
public class UserDefined2 {
    public static void main(String[]args){
        Scanner sc=new Scanner(System.in);
        System.out.print("Enter a number :");
        int num=sc.nextInt();
        Scanner sc1=new Scanner(System.in);
        System.out.print("Enter another number :");
        int num1=sc1.nextInt();
        if (num>num1){
            System.out.println(num+"is greater than"+num1);
        }
        else if(num<num1){
            System.out.println(num1+" is greater than"+num);
        }
        else {
            System.out.println("Both are equal");
        }
    }
    
}
