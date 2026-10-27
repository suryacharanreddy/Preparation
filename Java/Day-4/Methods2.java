public class Methods2{
    int result,res;
    public int addition(int a,int b){
        result =a+b;
        return result;
    }
    public static void main(String[]args){
        Methods2 me=new Methods2();
        Methods2 r=new Methods2();
        r.res=me.addition(10,20);
        System.out.println(r.res);
    }
}