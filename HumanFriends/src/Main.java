import controller.controller;
import view.View;

import java.io.IOException;
import java.util.Scanner;
import java.util.logging.FileHandler;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;

// Press Shift twice to open the Search Everywhere dialog and type `show whitespaces`,
// then press Enter. You can now see whitespace characters in your code.
public class Main {
    public static Logger logger = Logger.getLogger(Main.class.getName());
    public static void main(String[] args) throws IOException {

        FileHandler fh = new FileHandler("log.txt");
        logger.addHandler(fh);
        SimpleFormatter sFormat = new SimpleFormatter();
        fh.setFormatter(sFormat);

        Scanner sc = new Scanner(System.in);
        View mv = new View(sc);
        controller myApp = new controller(mv);

        myApp.Start();

        sc.close();
    }
}