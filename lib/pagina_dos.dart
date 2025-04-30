import 'package:flutter/material.dart';

class PaginaDos extends StatefulWidget {
  const PaginaDos({Key? key}) : super(key: key);

  @override
  State<PaginaDos> createState() => _PaginaDosState();
}

class _PaginaDosState extends State<PaginaDos> {
  final GlobalKey<AnimatedListState> _key = GlobalKey<AnimatedListState>();
  final List<String> _items = [];
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Added a Scaffold for better structure
      appBar: AppBar(title: const Text('Pantalla Dos')), // Added an AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text(
                  'Mostrar Alerta en Pantalla Dos'), // Updated the button text
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Cerrar'),
                      ),
                    ],
                    title: const Text('Flutter Mapp'),
                    contentPadding: const EdgeInsets.all(20.0),
                    content: const Text(
                        'Este es el Diálogo de Alerta desde Pantalla Dos'), // Updated alert message
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pop(context), // Changed to pop to go back
              child: const Text('Volver a Pantalla Uno'),
            ),
          ],
        ),
      ),
    );
  }
}
