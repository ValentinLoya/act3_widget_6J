import 'package:flutter/material.dart';

class PaginaCuatro extends StatefulWidget {
  const PaginaCuatro({Key? key}) : super(key: key);

  @override
  _PaginaCuatroState createState() => _PaginaCuatroState();
}

class _PaginaCuatroState extends State<PaginaCuatro> {
  bool _isFlat = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Added Scaffold for proper structure
      appBar: AppBar(
        title: const Text('Página Cuatro'),
      ),
      body: Center(
        child: Column(
          // Wrapped the Container and ElevatedButton in a Column
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.orange,
              child: const Baseline(
                baseline: 50,
                baselineType: TextBaseline.alphabetic,
                child: FlutterLogo(size: 50),
              ),
            ),
            const SizedBox(height: 20), // Added some spacing
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
