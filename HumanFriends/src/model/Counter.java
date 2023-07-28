package model;

import model.Exceptions.CloseCounterException;

import java.io.FileOutputStream;
import java.io.IOException;

public class Counter implements AutoCloseable{
    private int counter;
    private boolean isOpen;

    public Counter(int count){
        this.counter = count;
        this.isOpen = true;
    }
    public int incremrntCounter() throws CloseCounterException {
        if (!isOpen){
            throw new CloseCounterException("Счётчик закрыт");
        }
        return ++counter;
    }
    public void closeCounter(){
        this.isOpen = false;
    }

    public void openCounter(){
        this.isOpen = true;
    }

    @Override
    public void close() {
        closeCounter();
    }

    @Override
    public String toString() {
        return "" + this.counter;
    }
}
