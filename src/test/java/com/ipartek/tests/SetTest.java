package com.ipartek.tests;

import static org.junit.Assert.*;

import java.util.HashSet;

import org.junit.Test;

public class SetTest {

	@Test
	public void test() {
		
		assertTrue(4 > 2);
		assertEquals (2, 2);
		assertNull(null);
		
		HashSet<String> paises = new HashSet<String>();
		assertNotNull(paises);
		
		paises.add("eh");
		paises.add("ct");
		paises.add("es");
		paises.add("fr");
		
		assertEquals("mensaje personalizado por si falla", 4, paises.size());
		
		
	}

}
