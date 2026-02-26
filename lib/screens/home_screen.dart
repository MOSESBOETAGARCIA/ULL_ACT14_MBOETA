// lib/screens/home_screen.dart

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Definimos los colores basados en tus bocetos
    final Color colorAppBar = Colors.lightBlue[100]!;
    final Color colorFondoRosa = const Color(0xFFFFEBEE);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: colorAppBar,
        elevation: 0,
        title: const Text(
          "Barbaslocas Peluca",
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
        ),
      ),
      endDrawer: Drawer(
        child: Container(
          color: colorFondoRosa,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue[300],
                ),
                child: const Text(
                  'Menú',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              _buildDrawerItem("Perfil", Icons.person, Colors.red[100]!, context),
              _buildDrawerItem("Barberos", Icons.content_cut, Colors.blue[100]!, context),
              _buildDrawerItem("Nosotros", Icons.info, Colors.red[100]!, context),
              _buildDrawerItem("Agendar citas", Icons.calendar_today, Colors.blue[100]!, context),
              _buildDrawerItem("Novedades", Icons.new_releases, Colors.red[100]!, context),
            ],
          ),
        ),
      ),
      body: Container(
        color: colorFondoRosa,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.blue[300],
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "INICIO",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              _buildPhotoContainer(
                "Moises Boeta Gora",
                'https://picsum.photos/400/300?random=1'
              ),
              _buildPhotoContainer(
                "David Lopez",
                'https://picsum.photos/400/300?random=2'
              ),
              _buildPhotoContainer(
                "Cliente Satisfecho 1",
                'https://picsum.photos/400/300?random=3'
              ),
              _buildPhotoContainer(
                "Cliente Satisfecho 2",
                'https://picsum.photos/400/300?random=4'
              ),
              const SizedBox(height: 20),
              const Text("INICIO", style: TextStyle(color: Colors.black54)),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // Función para construir los elementos del menú lateral
  Widget _buildDrawerItem(String titulo, IconData icon, Color colorFondo, BuildContext context) {
    return Container(
      color: colorFondo,
      child: ListTile(
        leading: Icon(icon, color: Colors.black87),
        title: Text(
          titulo,
          style: const TextStyle(fontSize: 18, color: Colors.black87),
        ),
        onTap: () {
          Navigator.pop(context); // Cierra el drawer
          if (titulo == "Barberos") {
            Navigator.pushNamed(context, '/barberos');
          } 
          // Aquí se podrían añadir más navegaciones para los otros ítems
        },
      ),
    );
  }

  // Función para construir los contenedores de fotos
  Widget _buildPhotoContainer(String nombreUsuario, String urlImagen) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.red, width: 1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.account_circle, color: Colors.grey, size: 24),
              const SizedBox(width: 10),
              Text(
                nombreUsuario,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black87),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black26),
            ),
            child: Image.network(
              urlImagen,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const Center(child: CircularProgressIndicator());
              },
              errorBuilder: (context, error, stackTrace) {
                return const Center(child: Icon(Icons.broken_image, size: 50, color: Colors.grey));
              },
            ),
          ),
        ],
      ),
    );
  }
}
