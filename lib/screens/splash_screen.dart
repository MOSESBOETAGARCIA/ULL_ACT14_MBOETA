
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simula el "Cargando" por 3 segundos
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Barbaslocas", style: TextStyle(fontSize: 32, color: Colors.blue, fontWeight: FontWeight.bold)),
            const Text("Peluca", style: TextStyle(fontSize: 28, color: Colors.red)),
            const SizedBox(height: 20),
            // El poste de barbero (usamos un icono representativo)
            const Icon(Icons.content_cut, size: 100, color: Colors.redAccent),
            const SizedBox(height: 20),
            const Text("Cargando...", style: TextStyle(color: Colors.grey)),
            const CircularProgressIndicator(color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
