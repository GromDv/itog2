package model;

import view.View;

public class AddNewAnimal extends Operation{

    @Override
    public String execute(View vw, Zoo mz) {
        int specId = -1;
        do {
            specId = vw.getUserChoice("Кого хотите добавить?" + mz.showZooSpecs() + ": ") - 1;
        } while (!mz.isSpecie(specId));
        String inSpec = mz.getSpecById(specId);

        int famId = -1;
        do {
            famId = vw.getUserChoice("Кого именно?\n" + mz.showFamily(inSpec) + ": ") - 1;
        } while (!mz.isFamily(inSpec, famId));
        String inFamily = mz.getFamById(inSpec, famId);

        String inName = vw.getUserExpression("Введите имя: ");
        return mz.addNewAnimal(inName, inSpec, inFamily);
    }
}
