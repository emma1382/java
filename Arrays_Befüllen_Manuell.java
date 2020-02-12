
package jav1_teil_2;

import java.util.Scanner;                                                       //Import Scanner

public class Arrays_Befüllen_Manuell {
    public static void main(String[] args) throws InterruptedException {
        Scanner eingabe = new Scanner(System.in);                               //Scanner für Eingabe
        int[] tarry = new int[5];                                               //Array leer mit 5 Plätzen
        int laenge = tarry.length;                                              //Arraylänge 
        int i=0;                                                                //Counter
        System.out.println("Gesamtlänge ist " +laenge);                         //Ausgabe der Gesammtlänge
        
        while (i < laenge){                                                     //Schleife
            System.out.println("Bitte geben sie eine Zahl für Slot"
                    + " ♦ "+i+" ♦ ein.");                                      //Manuelle Befüllung
            System.out.print("►►\t");                                          //Tabstop und ohne ln(neue Zeile
            tarry[i] = eingabe.nextInt();
            i++;                                                                //Counter zählt hoch
        }
        i=0;                                                                    //Counter Reset
        System.out.println("Vielen Dank ");                                     //Floskel
        Thread.sleep(1000);                                                     //Verzögerung
        System.out.println("Nun folgen die Inhalte des Array's");               //Floskel
       // Thread.sleep(1000);                                                     //Verzögerung
        
        while (i < laenge){                                                     //Schleife
            System.out.println("Inhalt auf ["+i+"] "
                    + "ist ► " +tarry[i]+ " ◄");                               //zeigt an was auf der Positionist
            i=i+1;                                                              //Zählt den Counter hoch
          //  Thread.sleep(1000);                                                 //verzögerung bei der Ausgabe
        }   
        System.out.println("Ende der Ausgabe, "                    
                + "Vielen dank für Zuschauen");                                 //Ende
    }
}