package model;

import view.View;

public class ExitOperation extends Operation {
    @Override
    public String execute(View vw, Zoo mz) {
        return "Спасибо, заходите ещё!";
    }
}
