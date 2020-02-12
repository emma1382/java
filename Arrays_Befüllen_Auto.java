
package jav1_teil_2;

public class Arrays_Befüllen_Auto {
    public static void main(String[] args) throws InterruptedException {
        int[] tarry = new int[5];                                               //Array leer mit 5 Plätzen
        int laenge = tarry.length;                                              //Arraylänge 
        int i=0;                                                                //Counter
        System.out.println("Gesamtlänge ist " +laenge);                         //Ausgabe der Gesammtlänge
        
        while (i < laenge){                                                     //Schleife
            tarry[i] = i;                                                       //Auto-füllen über Counte (i) oder
            System.out.println("Inhalt auf ["+i+"] "
                    + "ist ► " +tarry[i]+ " ◄");                               //zeigt an was auf der Positionist
            i=i+1;                                                              //Zählt den Counter hoch
            Thread.sleep(1000);                                                 //verzögerung bei der Ausgabe
        }   
        System.out.println("Ende der Ausgabe, "                    
                + "Vielen dank für Zuschauen");                                 //Ende
    }
}