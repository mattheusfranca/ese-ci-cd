// src/main/java/com/example/MyApp.java
package com.example;

public class MyApp {
    public String sayHello() {
        return "Hello, World!";
    }

    public int add(int a, int b) {
        return a + b;
    }

    public boolean isPositive(int number) {
        return number > 0;
    }

    public static void main(String[] args) {
        MyApp app = new MyApp();
        System.out.println(app.sayHello());
    }
}
