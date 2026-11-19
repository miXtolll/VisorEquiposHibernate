package cesur.dam.inventario;

import cesur.dam.inventario.models.Equipo;
import javafx.beans.property.SimpleStringProperty;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.net.URL;
import java.util.ResourceBundle;

public class TablaController implements Initializable {

    @FXML
    private TableView<Equipo> tabla;
    @FXML
    private TableColumn<Equipo, Integer> colId;
    @FXML
    private TableColumn<Equipo, String> colNombre;
    @FXML
    private TableColumn<Equipo, String> colCategoria;
    @FXML
    private TableColumn<Equipo, String> colDisponible;

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        colId.setCellValueFactory(new PropertyValueFactory<>("id"));
        colNombre.setCellValueFactory(new PropertyValueFactory<>("nombre"));
        colCategoria.setCellValueFactory(new PropertyValueFactory<>("categoria"));
        colDisponible.setCellValueFactory(celda -> new SimpleStringProperty(Boolean.TRUE.equals(celda.getValue().getDisponible()) ? "Sí" : "No"));

        var cfg = new Configuration().configure();
        SessionFactory sf = cfg.buildSessionFactory();

        try (Session session = sf.openSession()) {
            session.createQuery("from Equipo", Equipo.class)
                    .getResultList()
                    .forEach(equipo -> tabla.getItems().add(equipo));
        }
    }
}