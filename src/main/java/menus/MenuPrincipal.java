package menus;

import java.util.Scanner;

public class MenuPrincipal {
    private boolean salir = false;
    private Scanner sc = new Scanner(System.in);


    public void muestraMenu() {
        String opcion;
        do {
            System.out.println("Elige una opcion:");
            System.out.println("1. Actualizar teléfono.");
            System.out.println("2. Añadir nota.");
            System.out.println("3. Añadir notas del XML.");
            System.out.println("4. Generar Json con las notas de un alumno");
            System.out.println("0. Salir");
            opcion = this.pideOpcion();
            this.procesaOpcion(opcion);
        } while (!salir);
    }

    private String pideOpcion() {
        return this.sc.nextLine();
    }

    private void procesaOpcion(String opcion) {
        switch (opcion) {
            case "0" -> salir = true;
            case "1" -> {

            }
            case "2" ->{

            }
            case "3" ->{

            }
            case "4" -> {

            }
            default -> System.out.println("Opción incorrecta");
        }
    }
}
