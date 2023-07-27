package model;

import view.View;

public class ShowAnimalsList extends Operation{

    public ShowAnimalsList() {
    }

    @Override
    public String execute(View vw, Zoo mz) {
        return mz.showAnimalsList();
    }
}
