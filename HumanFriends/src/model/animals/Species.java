package model.animals;

import java.util.ArrayList;

public class Species {
    private ArrayList<Family> speciesList;

    public Species() {
        this.speciesList = new ArrayList<>();
        String[] pets = {"Кошка", "Собака", "Хомяк"};
        this.speciesList.add(new Family("Домашние животные", pets));
        String[] packs = {"Лошадь", "Верблюд", "Осёл"};
        this.speciesList.add(new Family("Вьючные животные", packs));
    }

    public boolean isSpecies(int id) {
        if(id >= 0 && id < this.speciesList.size())
            return true;
        else
            return false;
    }
    public boolean isFamily(String nm, int id) {
        for (int i = 0; i < this.speciesList.size(); i++) {
            if (this.speciesList.get(i).getName().equals(nm)) {
                if(id >=0 && id < this.speciesList.get(i).getFamListSize())
                    return true;
            }
        }
        return false;
    }

    public String getSpecById(int id) {
        return this.speciesList.get(id).getName();
    }

    public String getFamilyById(String name, int id) {
        for (int i = 0; i < this.speciesList.size(); i++) {
            if (this.speciesList.get(i).getName().equals(name)) {
                return this.speciesList.get(i).getFamById(id);
            }
        }
        return "";
    }

    public String showSpeciesList() {
        StringBuilder res = new StringBuilder("\n");
        for (int i = 1; i < this.speciesList.size() + 1; i++) {
            res.append("\t" + i + ". " + this.speciesList.get(i - 1).getName() + "\n");
        }
        return res.toString();
    }

    public String showFamily(String name) {
        for (int i = 1; i < this.speciesList.size() + 1; i++) {
            if (this.speciesList.get(i - 1).getName().equals(name)) {
                return this.speciesList.get(i - 1).showFamily();
            }
        }
        return "";
    }
}
