import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.lightBlue[100], title: const Text("Crear Cuenta")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            _campo("Nombre"),
            _campo("Apellidos"),
            _campo("Fecha nacimiento"),
            _campo("Teléfono"),
            _campo("Correo"),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[200]),
              onPressed: () => Navigator.pushNamed(context, '/home'),
              child: const Text("Entrar"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _campo(String texto) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextField(decoration: InputDecoration(hintText: texto, border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)))),
    );
  }
}