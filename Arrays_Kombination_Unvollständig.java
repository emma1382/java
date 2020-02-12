
package jav1_teil_2;
import java.util.Scanner;
public class Arrays_Kombination_Unvollständig {
    public static void main(String[] args) {
        Scanner eingabe = new Scanner(System.in);
        int[] tn = {1,2,3,4,5,6,7,8,9,10,11,12,13};
        String[] name = {"Sackewitz","Reeps","Sonntag","Nasto","Civga","Mayer",
            "Müller","Huber","Ratlos","Sackowitz","Merkusch","Kayan","Schwimmbeck"};
        int [] pk = {100,99,40,88,91,51,25,45,78,71,61,51,81};
        int laenge = tn.length;
        int i = 0;
        int summe = 0;
        int ds = 0;
        int min = pk[0];
        int max = pk[0];
        
        while (i < laenge){
            summe = summe + pk[i];
            i++;
        }
        ds = summe / laenge;
        
        while (i < laenge) {                                                    //Schleife
            if (pk[i] > max) {                                                  //if abfrage
                max = pk[i];                                                    //Neuer Max Wert falls if zutrifft
                i++;                                                            //Counter
            } else if (pk[i] < min) {                                           //else if abfrage
                min = pk[i];                                                    //Neuer Min Wert falls if zutrifft
                i++;                                                            //Counter
            }
            i++;                                                                //Counter
        }        
        System.out.println("Bitte geben sie die Teilnehmer Nummer ein.");
        int suche = eingabe.nextInt();
        System.out.println("Der Teilnehmer heißt " +name[suche-1]+ " und hat bei JAV1 " +pk[suche-1]);
        System.out.println("Die Max Punkt sind " +max);
        System.out.println("Die Min Punkt sind " +min);
        System.out.println("Der Durschnitt beträgt " +ds); 
    }
}
