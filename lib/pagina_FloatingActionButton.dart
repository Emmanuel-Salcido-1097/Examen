import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
        title: const Text(
          'FloatingActionButton',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(
                Icons.add,
                size: 30,
              ),
            ),
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
      //  The bottomNavigationBar property should be used, not a Stack.
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(), // Add the notch for the FAB
        notchMargin: 8.0, // Define the margin around the notch
        color: Colors.purple, // Background color of BottomAppBar
        child: Container(height: 60), // Provide a container for the height
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal,
        child: const Icon(
          Icons.home,
          size: 40,
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked, // Position the FAB
    );
  }
}
