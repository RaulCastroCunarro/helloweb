package com.ipartek.formacion.model;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import com.ipartek.formacion.model.pojo.Perro;

public class ArrayPerroDAOTest {
	
	private static ArrayPerroDao dao;
	private static Perro mock;
	private static int indice = 1;
	private static final String MOCK_NOMBRE= "Pulgas";
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		dao = ArrayPerroDao.getInstance();
		mock = new Perro(indice, MOCK_NOMBRE);
		dao.create(mock);
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		mock = null;
		dao = null;
	}

	@Before
	public void setUp() throws Exception {
		mock = new Perro(1, MOCK_NOMBRE);
		dao.create(mock);
	}

	@After
	public void tearDown() throws Exception {
		mock = null;
	}

	@Test
	public void testGetAll() throws Exception {
		assertEquals("Sólo 1 Perro",1, dao.getAll().size());
	}
	
	@Test
	public void testGetById() throws Exception {
		assertNull ("Es imposible que exista este pero", dao.getById(-indice));
		
		Perro p = dao.getById(indice);
		assertSame("debería existir Pulgas",p, mock);
	}

	@Test
	public void testDelete() {
		
		try {
			//solucionar bug tearDown, creamos un perro, para eliminarlo
			Perro pEliminar = new Perro(345, "Pulgas 345");
			dao.create(pEliminar);
			Perro p = dao.delete(pEliminar.getId());
			assertSame(p, pEliminar);
			assertEquals("No queda ninguno",0, dao.getAll().size());
			
			dao.delete(-indice);
			fail("deberíahaber lanzado Exception");
			
		}catch(Exception e){
			e.printStackTrace();
			assertTrue("lanzada excepction correctamente al eliminar un Perro que ni existe", true);
		}
	}

	@Test
	public void testUpdate() {
		//TODO testUpdate
	}

	@Test
	public void testCreate() {
		//TODO testCreate
	}

}
