import 'package:flutter/material.dart';

class PantallaUno extends StatelessWidget {
  const PantallaUno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Uno'),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: const TextStyle(fontSize: 25.0),
                backgroundColor: Colors.lightBlue[300], // Color claro y bonito
                foregroundColor: Colors.white,
              ),
              onPressed: () => Navigator.pushNamed(context, '/Pantalla2'),
              child: const Text('Ir a Pantalla Dos'),
            ),
          ),
          const SizedBox(height: 25), // Aproximadamente 0.8 cm de espacio
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: const TextStyle(fontSize: 25.0),
                backgroundColor: Colors.lightBlue[300], // Color claro y bonito
                foregroundColor: Colors.white,
              ),
              onPressed: () => Navigator.pushNamed(context, '/Pantalla3'),
              child: const Text('Ir a Pantalla Tres'),
            ),
          ),
          const SizedBox(height: 25), // Aproximadamente 0.8 cm de espacio
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: const TextStyle(fontSize: 25.0),
                backgroundColor: Colors.lightBlue[300], // Color claro y bonito
                foregroundColor: Colors.white,
              ),
              onPressed: () => Navigator.pushNamed(context, '/Pantalla4'),
              child: const Text('Ir a Pantalla Cuatro'),
            ),
          ),
          const SizedBox(height: 25),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: const TextStyle(fontSize: 25.0),
                backgroundColor: Colors.lightBlue[300], // Color claro y bonito
                foregroundColor: Colors.white,
              ),
              onPressed: () => Navigator.pushNamed(context, '/Pantalla5'),
              child: const Text('Ir a Pantalla Cinco'),
            ),
          ),
          const SizedBox(height: 25), // Aproximadamente 0.8 cm de espacio
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: const TextStyle(fontSize: 25.0),
                backgroundColor: Colors.lightBlue[300], // Color claro y bonito
                foregroundColor: Colors.white,
              ),
              onPressed: () => Navigator.pushNamed(context, '/Pantalla6'),
              child: const Text('Ir a Pantalla Seis'),
            ),
          ),
          const SizedBox(height: 25), //
        ],
      ),
    );
  }
}
