// src/test/java/com/example/MyAppTest.java
package com.example;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class MyAppTest {

    private final MyApp app = new MyApp();

    @Test
    public void testSayHello() {
        assertEquals("Hello, World!", app.sayHello());
    }

    @Test
    public void testAdd() {
        assertEquals(5, app.add(2, 3));
    }

    @Test
    public void testIsPositive() {
        assertTrue(app.isPositive(1));
        assertFalse(app.isPositive(-1));
    }
}
