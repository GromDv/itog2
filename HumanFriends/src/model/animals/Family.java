package model.animals;

import java.util.ArrayList;

public class Family {


    private String name;
    private ArrayList<String> familyList;

    public String getName() {
        return name;
    }

    public Family(String name, String fams[]) {
        this.name = name;
        this.familyList = new ArrayList<>();
        for (int i = 0; i < fams.length; i++) {
            this.familyList.add(fams[i]);
        }
    }
    public int getFamListSize() {
        return this.familyList.size();
    }

    public String getFamById (int id) {
        return this.familyList.get(id);
    }

    public String showFamily() {
        StringBuilder res = new StringBuilder("");
        for (int j = 1; j < this.familyList.size()+1; j++) {
            res.append("\t" + j + ". " + this.familyList.get(j-1) + "\n");
        }
        return res.toString();
    }
}
