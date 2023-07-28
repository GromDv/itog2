package model.animals;

import model.Interfaces.ShowSkills;

import java.util.ArrayList;

public class Animal implements ShowSkills {
    private int id;
    private String name;
    private String className;
    private String family;
    private ArrayList<String> skills;

    public Animal(String name, String className, String family) {
        this.name = name;
        this.className = className;
        this.family = family;
        this.skills = new ArrayList<>();
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return String.format("%d. %s -> %s -> %s",id, name, family, className);
    }

    @Override
    public String showSkills() {
        StringBuilder result = new StringBuilder("\n");
        if(skills.size() > 0) {
            for (String skill: skills) {
                result.append("\t"+skill+"\n");
            }
        } else {
            return "Навыков пока нет!\n";
        }
        return result.toString();
    }
    public void addSkill(String sk) {
        this.skills.add(sk);
    }
}