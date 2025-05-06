import 'package:flutter/material.dart';
import 'package:examen/pagina_inicial.dart';
import 'package:examen/pagina_Gridview.dart';
import 'package:examen/pagina_AppBar.dart';
import 'package:examen/pagina_Text.dart';
import 'package:examen/pagina_PageView.dart';
import 'package:examen/pagina_ListWheelScrollView.dart';
import 'package:examen/pagina_FloatingActionButton.dart';
import 'package:examen/pagina_Transform.dart';
import 'package:examen/pagina_FutureBuilder.dart';

void main() => runApp(MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Rutas entre paginas",
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PantallaInicial(),
        '/pantalla1': (context) => const MyGridView(),
        '/pantalla2': (context) => const MyAppBar(),
        '/pantalla3': (context) => const MyTextStyle(),
        '/pantalla4': (context) => MyPageView(),
        '/pantalla5': (context) => const MyListWheelScrollView(),
        '/pantalla6': (context) => const MyFloatingActionButton(),
        '/pantalla7': (context) => const MyTransform(),
        '/pantalla8': (context) => const MyFutureBuilder(),
      },
    );
  }
}
