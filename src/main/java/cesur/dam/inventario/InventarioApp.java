package cesur.dam.inventario;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;

import java.io.IOException;

public class InventarioApp extends Application {

    @Override
    public void start(Stage stage) throws IOException {
        FXMLLoader fxmlLoader = new FXMLLoader(InventarioApp.class.getResource("tabla-view.fxml"));
        Scene scene = new Scene(fxmlLoader.load());
        stage.setTitle("Inventario");
        stage.setScene(scene);
        stage.show();
    }
}