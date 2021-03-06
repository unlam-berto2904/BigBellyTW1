package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;
import java.util.Set;

import ar.edu.unlam.tallerweb1.modelo.Combo;
import ar.edu.unlam.tallerweb1.modelo.Ingrediente;
import ar.edu.unlam.tallerweb1.modelo.Usuario;

public interface ServicioCrearHamburguesa {
 
	Ingrediente consultarIngredienteById(Long id);
	List<Ingrediente> listarPanes();
	List<Ingrediente> listarCarnes();
	List<Ingrediente> listarAderezos();
	List<Ingrediente> listarVegetales();
	
	Double precioFinalCombo(Double costoCombo);
	String guardarCombo(Set<Ingrediente> ingredientes, Usuario usuario) throws Exception;
	List<Combo> listarCombos(Usuario usuario);
	Boolean validarCombo(Set<Ingrediente> ingredientes);	
	Double precioCostoCombo(Set<Ingrediente> ingredientes);
    //NUEVOS
	void eliminarComboAdmin(Long id);
	Combo guardarComboAdmin(Set<Ingrediente> listaIngredientes, Usuario usuario) throws Exception;
	Boolean validarComboAdmin(Set<Ingrediente> ingredientes);
	void eliminarComboCreacionPedido(Long idCombo);

}
