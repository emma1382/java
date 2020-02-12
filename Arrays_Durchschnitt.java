
package jav1_teil_2;
public class Arrays_Durchschnitt {
    public static void main(String[] args) {
        int[] tarry = {11,91,25,48,68,79,12,35,24,68,94,61,16,49,78,23};        //Array mit inhalt
        int laenge = tarry.length;                                              //Array Länge
        int summe = 0;                                                          //Variable
        double durchschnitt = 0;                                                //Variable
        int i = 0;                                                              //Variable
        
        while (i < laenge){                                                     //Schleife
            summe = summe + tarry [i];                                          //Operation Summe ermitteln
            i++;                                                                //Counter
        }
        durchschnitt = summe / laenge;                                          //Operation Mittelwert ermitteln
        
        System.out.println("Die Anzahl der Inhalte ist: " +laenge);             //Ausgabe
        System.out.println("Die Summe der Inhalte ist: " +summe);               //Ausgabe
        System.out.println("Der durschnitt ist " +durchschnitt);                //Ausgabe
    }    
}
