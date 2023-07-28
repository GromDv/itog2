package model;

import model.animals.Animal;
import view.View;

public class AddNewSkill extends Operation {
    @Override
    public String execute(View vw, Zoo mz) {
        if (mz.getQtyAnimals() > 0) {
            int anId = -1;
            do {
                anId = vw.getUserChoice("Кого хотите обучить?" + mz.showAnimalsList() + ": ");
            } while (!mz.isAnimal(anId));
            Animal an = mz.getAnimalById(anId);
            String inName = vw.getUserExpression("Введите название навыка: ");
            return mz.addNewSkill(an, inName);
        } else {
            return "Некого пока обучать...";
        }
    }
}
