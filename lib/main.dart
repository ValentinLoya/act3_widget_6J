import 'package:flutter/material.dart';
import 'package:act3_widget/pagina_uno.dart';
import 'package:act3_widget/pagina_dos.dart';
import 'package:act3_widget/pagina_tres.dart';
import 'package:act3_widget/pagina_cuatro.dart';
import 'package:act3_widget/pagina_cinco.dart';
import 'package:act3_widget/pagina_seis.dart';

void main() => runApp(MiRutasApp());

class MiRutasApp extends StatelessWidget {
  const MiRutasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Entre Paginas Routes",
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PantallaUno(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/Pantalla2': (context) => const PaginaDos(),
        '/Pantalla3': (context) => const PaginaTres(),
        '/Pantalla4': (context) => const PaginaCuatro(),
        '/Pantalla5': (context) => const PaginaCinco(),
        '/Pantalla6': (context) => const PaginaSeis(),
      },
    );
  }
}
