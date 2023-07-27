package model.animals;

import model.Interfaces.ShowSkills;

import java.util.ArrayList;

public class Animal implements ShowSkills {
    private String name;
    private String className;
    private ArrayList<String> skills;

    public Animal(String name, String className) {
        this.name = name;
        this.className = className;
        this.skills = new ArrayList<>();
    }
    public Animal(String name, String className, String[] skills) {
        this.name = name;
        this.className = className;
        this.skills = new ArrayList<>();
        for (int i = 0; i < skills.length; i++ )
            this.skills.add(skills[i]);
    }

    @Override
    public String toString() {
        return String.format("%s : %s",className,name);
    }

    @Override
    public String showSkills() {
        StringBuilder result = null;
        if(skills != null) {
            for (String skill: skills) {
                result.append(skill+"\n");
            }
        } else {
            return "Навыков пока нет!\n";
        }
        return result.toString();
    }
}