package model;

import model.Exceptions.CloseCounterException;
import model.animals.Animal;
import model.animals.Species;

import java.util.ArrayList;

public class Zoo {
    private ArrayList<Animal> animalsList;
    private Species zooSpecs;
    private int qtyAnimals;

    public Zoo() {
        this.animalsList = new ArrayList<>();
        this.zooSpecs = new Species();
        this.qtyAnimals = 0;
    }
    public boolean isSpecie(int id) {
        return zooSpecs.isSpecies(id);
    }
    public boolean isFamily(String nm, int id) {
        return zooSpecs.isFamily(nm,id);
    }

    public int getQtyAnimals() {
        return  this.qtyAnimals;
    }
    public String addNewAnimal(String aName, String aSpec, String fam) {
        try (Counter cnt = new Counter(qtyAnimals)) {
            this.qtyAnimals = cnt.incremrntCounter();
        } catch (CloseCounterException e) {
            System.out.println("Ошибка: " + e.getMessage());
        };
        Animal an = new Animal(aName, aSpec, fam);
        an.setId(this.qtyAnimals);
        this.animalsList.add(an);
        return "Животное добавлено! (Всего: " + this.qtyAnimals + ")";
    }

    public String showAnimalsList() {
        if (this.animalsList.size() != 0) {
            StringBuilder res = new StringBuilder("\n");
            for (Animal an : this.animalsList )
            {
                res.append("\t"+an.toString()+"\n");
            }
            return res.toString();
        } else {
            return "Пока в питомнике пусто!";
        }
    }
    public String showZooSpecs() {
        return this.zooSpecs.showSpeciesList();
    }
    public String getSpecById(int id) {
        return this.zooSpecs.getSpecById(id);
    }
    public boolean isAnimal(int id) {
        for (Animal an: animalsList )
            if (id == an.getId())
                return true;
        return false;
    }
    public Animal getAnimalById(int id) {
        for (Animal an: animalsList ) {
            if (id == an.getId())
                return an;
        }
        return null;
    }
    public String showFamily(String name) {
        return this.zooSpecs.showFamily(name);
    }
    public  String getFamById(String name, int id) {
        return this.zooSpecs.getFamilyById(name,id);
    }
    public String addNewSkill(Animal an, String sk) {
        an.addSkill(sk);
        return "Навык добавлен!";
    }
    public String showAnimalSkills(Animal an) {
        return an.showSkills();
    }
}
