package view;

import java.util.ArrayList;
import java.util.List;

public class Menu {
    private List<MenuPoint> menu;

    public Menu() {
        this.menu = new ArrayList<>();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("");
        sb.append("=======================================\n");
        sb.append("Для выбора введите номер:\n");
        for (MenuPoint pm : this.menu) {
            sb.append(pm.getId() + " - " + pm.getTitle() + "\n");
        }
        sb.append(": ");
        return sb.toString();
    }

    public void addMenuPoint(MenuPoint mp) {
        this.menu.add(mp);
    }

    public MenuPoint getMenuPointById(int num, int defNum) {
        for (MenuPoint pm : this.menu) {
            if (pm.getId() == num)
                return pm;
        }
        for (MenuPoint pm : this.menu) {
            if (pm.getId() == defNum)
                return pm;
        }
        return this.menu.get(0);
    }
}
