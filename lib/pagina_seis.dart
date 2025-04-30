import 'package:flutter/material.dart';

class PaginaSeis extends StatelessWidget {
  const PaginaSeis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Seis'),
      ),
      body: Column(
        children: [
          Builder(
            builder: (BuildContext context) {
              return Text(
                'Text with Theme',
                style: Theme.of(context).textTheme.displayLarge,
              );
            },
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Volver a la Página Uno'),
          ),
        ],
      ),
    );
  }
}
