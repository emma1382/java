
package jav1_teil_2;

import java.util.Scanner;                                                       //Import Scanner

public class Arrays_Inhalt_Suche {
    public static void main(String[] args) {
        Scanner eingabe = new Scanner(System.in);                               //Scanner
        int[] tarry = {5,2,6,7,9,12,22,31,38,42,45,55,60,62,69,74,89,91,95,99}; //Array erstellen
        int laenge = tarry.length;                                              //Arraylänge 
        int i = 0;                                                              //Counter
        int dl = 0;                                                             //Durchlauf Counter
        int gefunden = 0;                                                       //Schalter
        
        System.out.println("Gesamtlänge ist " +laenge);                         //Ausgabe der Gesammtlänge
        
        System.out.println("Welche Zahl suchen Sie");                           //Eingabeaufforderung
        System.out.print("►►\t");                                              //Tabstop und ohne ln(neue Zeile
        int suche = eingabe.nextInt();                                          //Eingabe
        
        while (i < laenge && gefunden == 0){                                    //Schleife mit 2 bedingungen
            if (tarry[i] == suche){                                             //if incl. bedingung
                System.out.println("Gefunden an Position ["+i+"]");             //Ausgabe 
                gefunden = 1;                                                   //Schalter auf 1
            }
            i++;                                                                //else /bedingung counter
            dl++;                                                               //else /bedingung counter durchläufe
        }
        System.out.println("Die anzahl der durchläufe beträgt: " +dl);          //Ausgabe der Durchläufe
    }
}