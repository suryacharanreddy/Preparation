public class Methods{
    String name;
    void firstName(){
        name="Surya Charan Reddy";
        System.out.println(name);
    }
    public static void main(String[]args){
        Methods m=new Methods();
        for (int i=1; i<=10;i++){
            m.firstName();
        }

    }
}