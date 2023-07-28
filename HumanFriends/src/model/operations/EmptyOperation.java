package model.operations;

import model.Zoo;
import view.View;

public class EmptyOperation extends Operation {

    @Override
    public String execute(View vw, Zoo mz) {
        return "Пустая операция (пока), попробуйте другую...";
    }
}

