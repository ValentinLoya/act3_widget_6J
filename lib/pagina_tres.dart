import 'package:flutter/material.dart';

class PaginaTres extends StatefulWidget {
  const PaginaTres({Key? key}) : super(key: key);

  @override
  _PaginaTresState createState() =>
      _PaginaTresState(); // Corrected createState name
}

class _PaginaTresState extends State<PaginaTres> {
  bool _isFlat = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Added Scaffold for better structure
      appBar: AppBar(
        title: const Text("Página Tres"), // Added AppBar title
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AnimatedPhysicalModel(
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              elevation: _isFlat ? 0 : 6.0,
              shape: BoxShape.rectangle,
              shadowColor: Colors.black,
              color: Colors.white,
              child: const SizedBox(
                height: 120.0,
                width: 120.0,
                child: Icon(Icons.android_outlined),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isFlat = !_isFlat;
                });
              },
              child: const Text('Click'),
            ),
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
