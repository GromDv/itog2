import controller.controller;
import view.View;

import java.io.IOException;
import java.util.Scanner;

// Press Shift twice to open the Search Everywhere dialog and type `show whitespaces`,
// then press Enter. You can now see whitespace characters in your code.
public class Main {

    public static void main(String[] args) throws IOException {

        Scanner sc = new Scanner(System.in);
        View mv = new View(sc);
        controller myApp = new controller(mv);

        myApp.Start();

        sc.close();
    }
}