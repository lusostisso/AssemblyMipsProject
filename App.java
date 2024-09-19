import java.util.Scanner;

public class App {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        
        System.out.println("Programa Raiz Quadrada");
        System.out.println("========================");
        System.out.println("Componentes: <Luana Sostisso, Eduarda Fuchs, Fernanda Franschescini, Fernando Neto>");
        System.out.println("========================");
        int x = 0;
        int i = 0;
        while (x >= 0 && i>=0) {
            System.out.println("Digite os parametros x e i para calcular A(x, i) ou -1 para abortar a execuçao");
            x = in.nextInt();
            if(x<0){
                break;
            }
            i = in.nextInt();
            if(i<0){
                break;
            }
            int resp = 𝑠𝑞𝑟𝑡_𝑛𝑟(x,i);
            System.out.printf("A(%d, %d) = %d\n", x,i,resp);
        }
        System.out.println("Valor negativo digitado! Programa encerrado!");
    }

    
    public static int 𝑠𝑞𝑟𝑡_𝑛𝑟(int x, int i){
        if(i==0){
            return 1;
        }
        else if (i>0) {
            return (𝑠𝑞𝑟𝑡_𝑛𝑟(x, i-1) + (x/𝑠𝑞𝑟𝑡_𝑛𝑟(x, i-1))) /2;
        }
        return -1;
    }
}