package view;

import model.Interfaces.Execute;
import model.Operation;
import model.Zoo;

public class MenuPoint implements Execute {
    private String title;
    private int id;
    private Operation oper;

    public String getTitle() {
        return title;
    }

    public int getId() {
        return id;
    }

    /**
     * Добавляет пункт меню как объект класса
     * @param title - название пункта в меню
     * @param id - номер в меню
     * @param oper - класс, отвечающий за выполнение
     */
    public MenuPoint(String title, int id, Operation oper) {
        this.title = title;
        this.id = id;
        this.oper = oper;
    }

    @Override
    public String execute(View vw, Zoo mz) {
        return this.oper.execute(vw, mz);
    }
}
