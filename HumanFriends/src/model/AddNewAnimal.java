package model;

import model.animals.Animal;
import model.animals.Cat;
import view.View;

public class AddNewAnimal extends Operation{

    @Override
    public String execute(View vw, Zoo mz) {
        Cat an = new Cat("Мурка");
        return mz.addNewAnimal(an);
    }
}
