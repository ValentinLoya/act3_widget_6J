import 'package:flutter/material.dart';

class PaginaCinco extends StatefulWidget {
  const PaginaCinco({Key? key}) : super(key: key);

  @override
  _PaginaCincoState createState() => _PaginaCincoState();
}

class _PaginaCincoState extends State<PaginaCinco> {
  int _count = 0;

  void _incrementCounter() {
    setState(() {
      _count++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_count > 0) {
        // Prevent negative values
        _count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Página Cinco"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Contador:',
              style: TextStyle(fontSize: 20),
            ),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300), // Shorter duration
              transitionBuilder: (Widget child, Animation<double> animation) {
                // Use a combination of scale and fade
                return FadeTransition(
                  opacity: animation,
                  child: ScaleTransition(scale: animation, child: child),
                );
              },
              child: Text(
                '$_count',
                style: const TextStyle(
                    fontSize: 40, fontWeight: FontWeight.bold), // Bold font
                key: ValueKey(_count),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Center the buttons
              children: [
                ElevatedButton(
                  onPressed: _decrementCounter,
                  child: const Text('Restar'),
                ),
                const SizedBox(width: 20), // Add some space between the buttons
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: const Text('Agregar'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Volver a la Página Uno'),
            ),
          ],
        ),
      ),
    );
  }
}
