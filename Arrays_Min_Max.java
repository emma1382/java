package jav1_teil_2;

public class Arrays_Min_Max {

    public static void main(String[] args) {
        int[] tarry = {11,97,44,25,32,45,74,94,86,24,22,35,85,46,97,18,34,64,29,
                       85,42,33,12,18,19,67,10,30,44,49,63,47,59,19,39,28,17};  //Array erstellen
        int laenge = tarry.length;                                              //Arraylänge 
        int i = 0;                                                              //Counte
        int max = tarry[i];                                                     //Startwert Max setzen
        int min = tarry[i];                                                     //Startwert Min setzen

        while (i < laenge) {                                                    //Schleife
            if (tarry[i] > max) {                                               //if abfrage
                max = tarry[i];                                                 //Neuer Max Wert falls if zutrifft
                i++;                                                            //Counter
            } else if (tarry[i] < min) {                                        //else if abfrage
                min = tarry[i];                                                 //Neuer Min Wert falls if zutrifft
                i++;                                                            //Counter
            }
            i++;                                                                //Counter
        }
        System.out.println("Array-Länge ist " +laenge);                         //Ausgabe der Länge
        System.out.println("Die Max Zahl ist " +max);                           //Ausgabe Max
        System.out.println("Die Min Zahl ist " +min);                           //Ausgabe Min
    }
    
}
