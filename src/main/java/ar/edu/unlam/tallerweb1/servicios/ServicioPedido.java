package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Pedido;
import ar.edu.unlam.tallerweb1.modelo.Usuario;

// Interface que define los metodos del Servicio de Usuarios.
public interface ServicioPedido {

	public Pedido consultarPedidoPorId(Long idPedido);
	public void actualizarEstadoPedidoAPendCoccion(Long idPedido);
	
//	public void actualizarEstadoPedidoAPendEntrega(Long idPedido);
//	public void actualizarEstadoPedidoAEntregado(Long idPedido);
//	public List<Pedido> listarPedidosPendCobro();
//	public List<Pedido> listarPedidosPendCoccion();
//	public List<Pedido> listarPedidosPendEntrega();
//	public List<Pedido> listarPedidosEntregados();
//	
	public void guardarPedido(Usuario usuario, String direccionUsuario);
	public List<Pedido> listarPedidosByUsuario(Usuario usuario);
	
	
}
