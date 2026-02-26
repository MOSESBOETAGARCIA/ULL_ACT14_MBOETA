
import 'package:flutter/material.dart';
import 'package:myapp/screens/splash_screen.dart'; 
import 'package:myapp/screens/login_screen.dart';
import 'package:myapp/screens/home_screen.dart';
import 'package:myapp/screens/register_screen.dart';
import 'package:myapp/screens/forgot_password_screen.dart';
import 'package:myapp/screens/barberos_screen.dart'; // Importamos la nueva pantalla

void main() => runApp(const BarbaslocasApp());

class BarbaslocasApp extends StatelessWidget {
  const BarbaslocasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Barbaslocas Peluca',
      initialRoute: '/', // Empezamos en el Splash
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/register': (context) => const RegisterScreen(),
        '/forgot-password': (context) => const ForgotPasswordScreen(),
        '/barberos': (context) => const BarberosScreen(), // Añadimos la nueva ruta
      },
    );
  }
}
