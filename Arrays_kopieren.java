package jav1_teil_2;

public class Arrays_kopieren {

    public static void main(String[] args) throws InterruptedException {        
        int[] tarry = {11,91,25,48,68,79,12,35,24,68,94,61,16,49,78,23};        //Array
        int[] jerry = new int[tarry.length];                                    //Array Jerry wird erstellt
        int laenge = tarry.length;                                              //Länge
        int i = 0;                                                              //Counte

        while (i < laenge) {                                                    //Schleife
            jerry[i] = tarry[i];                                                //Übertragung
            i++;                                                                //Counter
        }
        i = 0;                                                                  //Counter Reset
        while (i < laenge) {                                                    //Schleife
            System.out.println("Jerry[" + i + "] ist: " + jerry[i]);            //Ausgabe von Jerry Inhalt
            i++;                                                                //Counte
            Thread.sleep(1000);                                                 //Verzögerung
        }
    }
}
