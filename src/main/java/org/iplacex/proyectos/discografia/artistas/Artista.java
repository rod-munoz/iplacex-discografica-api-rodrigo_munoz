package org.iplacex.proyectos.discografia.artistas;

import java.util.List;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document("artistas")
public class Artista {
    @Id
    public String _id;

    public String nombre;
    public List<String> estilos;
    public int anioFundacion;
    public boolean estaActivo;
}
