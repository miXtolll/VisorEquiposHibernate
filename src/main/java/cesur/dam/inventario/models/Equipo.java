package cesur.dam.inventario.models;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name="Equipo")
public class Equipo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(unique = true, nullable = false)
    private String nombre;
    private String categoria;
    private Boolean disponible;
}