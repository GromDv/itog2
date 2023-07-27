package model;

import model.animals.Animal;

import java.util.ArrayList;

public class Zoo {
    private ArrayList<Animal> animalsList;

    public Zoo() {
        this.animalsList = new ArrayList<>();
    }

    public String addNewAnimal(Animal an) {
        this.animalsList.add(an);
        return "Животное добавлено!";
    }

    public String showAnimalsList() {
        StringBuilder res = new StringBuilder("\n");
        if (this.animalsList.size() != 0) {
            for (Animal an : this.animalsList )
            {
                res.append(an.toString()+"\n");
            }
        } else {
            res.append("Пока в питомнике пусто!");
        }
        return res.toString();
    }
}
