package model;

import model.animals.Animal;
import view.View;

public class ShowAnimalSkills extends Operation{
    @Override
    public String execute(View vw, Zoo mz) {
        if (mz.getQtyAnimals() > 0) {
            int anId = -1;
            do {
                anId = vw.getUserChoice("Кого хотите посмотреть?" + mz.showAnimalsList() + ": ");
            } while (!mz.isAnimal(anId));
            Animal an = mz.getAnimalById(anId);
            return mz.showAnimalSkills(an);
        } else {
            return "Нет животных, и навыков тоже нет...";
        }
    }
}
