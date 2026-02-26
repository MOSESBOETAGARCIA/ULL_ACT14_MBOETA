// lib/screens/forgot_password_screen.dart

import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Usaremos un color de fondo rosa muy claro, similar al color de lápiz en tu dibujo.
    final Color colorFondoRosa = const Color(0xFFFFEBEE);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[100],
        title: const Text(
          "Barbaslocas Peluca",
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.menu),
          SizedBox(width: 10),
        ],
      ),
      body: Container(
        color: colorFondoRosa,
        width: double.infinity,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            // Título principal con signo de exclamación al inicio
            const Text(
              "¡Olvido su contraseña!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            // Mensaje de ayuda
            const Text(
              "No se preocupe le ayudamos",
              style: TextStyle(fontSize: 18, color: Colors.black54),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            
            // Sección para el correo electrónico
            const Text(
              "Correo enlazado a la cuenta:",
              style: TextStyle(fontSize: 16, color: Colors.black87),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            // Campo de entrada para el correo, dibujado como un rectángulo simple.
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.all(10),
                border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
              ),
            ),
            const SizedBox(height: 30),
            
            // Sección para el código de verificación
            const Text(
              "codigo",
              style: TextStyle(fontSize: 16, color: Colors.black87),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            // Fila con los 5 pequeños campos cuadrados para los dígitos del código.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                5,
                (index) => SizedBox(
                  width: 40,
                  height: 40,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1, // Solo un dígito por campo
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      counterText: "", // Ocultar el contador de caracteres por defecto
                      contentPadding: const EdgeInsets.all(0),
                      border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            
            // Botón "Entrar", dibujado como un pequeño botón azul claro.
            SizedBox(
              width: 120,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[100],
                  elevation: 2,
                  shape: const RoundedRectangleBorder(), // Forma rectangular simple
                ),
                onPressed: () {
                  // Como es una validación simple (siempre true),
                  // asumimos que el código es correcto y volvemos al inicio.
                  Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                },
                child: const Text(
                  "Entrar",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}