import 'package:flutter/material.dart';

class BarberosScreen extends StatelessWidget {
  const BarberosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[100],
        title: const Text("Barbaslocas Peluca", 
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
        actions: const [Icon(Icons.menu), SizedBox(width: 10)],
      ),
      body: Container(
        color: const Color(0xFFFFEBEE), // Fondo rosa claro de tus dibujos
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            _buildBarberoRow("Carlos"),
            _buildBarberoRow("Miguel"),
            _buildBarberoRow("Edgar"),
            _buildBarberoRow("Luis"),
            const SizedBox(height: 20),
            const Center(child: Text("Barberos", style: TextStyle(color: Colors.black54))),
          ],
        ),
      ),
    );
  }

  Widget _buildBarberoRow(String nombre) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Text(nombre, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: 80,
          child: ListView.builder(
            scrollDirection: Axis.horizontal, // Scroll horizontal como en tu dibujo
            itemCount: 4,
            itemBuilder: (context, index) {
              return Container(
                width: 80,
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  color: Colors.white,
                ),
                child: const Icon(Icons.person, color: Colors.grey), // Representación de foto
              );
            },
          ),
        ),
        const Divider(),
      ],
    );
  }
}