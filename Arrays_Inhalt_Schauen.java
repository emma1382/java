
package jav1_teil_2;

import java.util.Scanner;                                                       //Import Scanner

public class Arrays_Inhalt_Schauen {
    public static void main(String[] args) {
        Scanner eingabe = new Scanner(System.in);                               //Scanner
        int[] tarry = {5,2,6,7};                                                //Array erstellen
        int laenge = tarry.length;                                              //Arraylänge 
        int i=0;                                                                //Counter
        System.out.println("Gesamtlänge ist " +laenge);                         //Ausgabe der Gesammtlänge
        
        
        System.out.println("Welche Index Position wollen sie Überprüfen");      //Eingabeaufforderung
        System.out.print("►►\t");                                              //Tabstop und ohne ln(neue Zeile)
        int position = eingabe.nextInt();                                       //Eingabe
        System.out.println("Sie Zahl an der [" +position+ "] "
                + "ist ► "+tarry[position]+" ◄");                              //Ausgabe incl. Posi und Inhalt
    }
}