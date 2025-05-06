import 'package:flutter/material.dart';

class MyTransform extends StatelessWidget {
  const MyTransform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
        title: const Text(
          'Transform',
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
            Transform.rotate(
              // Use Transform.rotate for simple rotation
              angle: 0.40, // Simpler angle property
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: const SizedBox(
                  width: 200,
                  height: 200,
                  child: Image(
                    //Use the Image widget
                    image: NetworkImage(
                        'https://raw.githubusercontent.com/Emmanuel-Salcido-1097/P8MisImagenes6I/refs/heads/main/ocean.jpg'),
                    fit: BoxFit
                        .cover, // Ensure the image covers the entire container
                  ),
                ),
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
    );
  }
}
