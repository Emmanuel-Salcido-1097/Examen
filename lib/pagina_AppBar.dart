import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'A P P B A R',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            // open menu drawer or handle navigation
          },
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // handle user icon press
            },
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Contenido principal"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar'),
            ),
          ],
        ),
      ),
    );
  }
}
