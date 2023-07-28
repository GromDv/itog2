package controller;

import model.*;
import view.*;

public class controller {
    private View view;
    private Zoo myZoo;
    static final int EXIT_ID = 9;
    static final int DEF_ID = 5;

    public controller(View View) {
        this.view = View;
        this.myZoo = new Zoo();
    }

    public void Start() {

        Menu mainMenu = new Menu();
        mainMenu.addMenuPoint(new MenuPoint("Посмотреть список животных", 1, new ShowAnimalsList()));
        mainMenu.addMenuPoint(new MenuPoint("Добавить новое животное", 2, new AddNewAnimal()));
        mainMenu.addMenuPoint(new MenuPoint("Посмотреть список навыков животного", 3, new ShowAnimalSkills()));
        mainMenu.addMenuPoint(new MenuPoint("Обучить животное новому навыку", 4, new AddNewSkill()));
        mainMenu.addMenuPoint(new MenuPoint("Можно что-нибудь добавить ещё", DEF_ID, new EmptyOperation()));
        mainMenu.addMenuPoint(new MenuPoint("Закончить", EXIT_ID, new ExitOperation()));

        menuService(mainMenu);
    }

    private void menuService(Menu menu) {
        int n;
        do {
            n = view.getMainMenuChoice(menu);
            if (n > 0) view.ShowString(menu.getMenuPointById(n, DEF_ID).execute(view, myZoo));
        } while (n != EXIT_ID);
    }
}
