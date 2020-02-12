
package jav1_teil_2;
public class Arrays_Befüllt {
    public static void main(String[] args) throws InterruptedException {
        int[] tarry = {5,2,6,7};                                                //Array erstellen
        int laenge = tarry.length;                                              //Arraylänge 
        int i=0;                                                                //Counter
        System.out.println("Gesamtlänge ist " +laenge);                         //Ausgabe der Gesammtlänge
        
        while (i < laenge){                                                     //Schleife
            System.out.println("Inhalt auf ["+i+"] "
                    + "ist ► " +tarry[i]+ " ◄");                               //zeigt an was auf der Positionist
            i=i+1;                                                              //Zählt den Counter hoch
           // Thread.sleep(1500);                                                 //verzögerung bei der Ausgabe
        }   
        System.out.println("Ende der Ausgabe, "                    
                + "Vielen dank für Zuschauen");                                 //Ende
    }
}
