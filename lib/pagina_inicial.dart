import 'package:flutter/material.dart';

class PantallaInicial extends StatelessWidget {
  const PantallaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
        title: const Text(
          'Pantalla Inicial',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ), // Establece el color de fondo a azul
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla1');
              },
              child: const Text('Gridview'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla2');
              },
              child: const Text('AppBar'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla3');
              },
              child: const Text('Text'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla4');
              },
              child: const Text('PageView'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla5');
              },
              child: const Text('ListWheelScrollView'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla6');
              },
              child: const Text('FloatingActionButton'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla7');
              },
              child: const Text('Transform'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla8');
              },
              child: const Text('FutureBuilder'),
            ),
          ),
        ],
      ),
    );
  }
}
