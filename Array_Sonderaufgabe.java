
package jav1_teil_2;
import java.util.Scanner;                                                       //Import Scanner
public class Array_Sonderaufgabe {
    public static void main(String[] args) throws InterruptedException {        //Incl. Sleeper
        Scanner eingabe = new Scanner(System.in);                               //Scanner
        int[] tn = {1,2,3,4,5,6,7,8,9,10,11,12,13};                             //Array
        String[] name = {"Sackewitz","Reeps","Sonntag","Nasto","Civga","Mayer", //Array
            "Müller","Huber","Ratlos","Sackowitz","Merkusch","Kayan","Schwimmbeck"};
        int [] pk = {79,99,79,88,49,51,25,45,78,71,61,51,81};                   //Array
        int laenge = tn.length;                                                 //Array Länge
        int i = 0;                                                              //Counter
        int summe = 0;                                                          //Variable
        int ds = 0;                                                             //Variable
        int min = pk[i];                                                        //Variable
        int max = pk[i];                                                        //Variable
        
        while (i < laenge) {                                                    //Schleife
            if (pk[i] > max) {                                                  //if abfrage
                max = pk[i];                                                    //Neuer Max Wert falls if zutrifft
                i++;                                                            //Counter
            } else if (pk[i] < min) {                                           //else if abfrage
                min = pk[i];                                                    //Neuer Min Wert falls if zutrifft
                i++;                                                            //Counter
            }else{                                                              //else
            i++;                                                                //Counter
            }
        }   
        i = 0;                                                                  //Counter Reset
        while (i < laenge){                                                     //Schleife
            summe = summe + pk[i];                                              //Addiert die Gesammtpunktzahl
            i++;                                                                //Counter
        }
        ds = summe / laenge;                                                    //Durchschnitt errechnen
        
        System.out.println("Bitte geben sie die Teilnehmer Nummer ein. (1 bis 13 möglich)");//Eingabe Aufforderung
        int suche = eingabe.nextInt();                                          //Eingabe
        Thread.sleep(1000);                                                     //Verzögerung
        System.out.println("Der Teilnehmer heißt ► " +name[suche-1]+ " ◄ und hat bei JAV1 ► " +pk[suche-1]+ " ◄");
        Thread.sleep(1500);                                                     //Verzögerung
        System.out.println("Die Max Punkt sind ► " +max+ " ◄");                //Ausgabe
        Thread.sleep(1500);                                                     //Verzögerung
        System.out.println("Die Min Punkt sind ► " +min+ " ◄");                //Ausgabe
        Thread.sleep(1500);                                                     //Verzögerung
        System.out.println("Der Durschnitt beträgt ► " +ds+ " ◄");             //Ausgabe
    }
}
