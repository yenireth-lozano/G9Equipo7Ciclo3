package com.grupo9.tienda.generica.BO;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.grupo9.tienda.generica.DAO.ProductoDAO;
import com.grupo9.tienda.generica.DTO.ProductoVO;

@RestController
public class ProductoContoller {
	/*
	 * @GetMapping obtener o buscar
	 * @PostMapping insertar o agregar
	 * @PutMapping modificar o actualizar
	 * @DeleteMapping eliminar o borrar
	 * */

	@PostMapping("/registrarproducto")
	public void registrarProducto(ProductoVO product) {
		ProductoDAO Dao = new ProductoDAO();
		Dao.registrarProducto(product);
	}

	@GetMapping("/consultarproducto")
	public ArrayList<ProductoVO> consultarProducto(Integer code) {
		ProductoDAO Dao = new ProductoDAO();
		return Dao.consultarProducto(code);
	}

	@GetMapping("/listaproductos")
	public ArrayList<ProductoVO> listaProductos() {
		ProductoDAO Dao = new ProductoDAO();
		return Dao.listaProductos();
	}
	
	@DeleteMapping("/eliminarproducto")
	public void eliminarProducto(Integer code) {
		ProductoDAO Dao = new ProductoDAO();
		Dao.eliminarProducto(code);
	}
	
	@DeleteMapping("/eliminartodoproducto")
	public void eliminarTodoProducto() {
		ProductoDAO Dao = new ProductoDAO();
		Dao.eliminarTodoProducto();
	}
	
	@PutMapping("/actualizarproducto")
	public void actualizarProducto(ProductoVO product) {
		ProductoDAO Dao = new ProductoDAO();
		Dao.actualizarProducto(product);
	}
	
}
