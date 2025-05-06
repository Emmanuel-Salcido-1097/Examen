import 'package:flutter/material.dart';
import 'post/post1.dart';
import 'post/post2.dart';
import 'post/post3.dart';

class MyPageView extends StatelessWidget {
  MyPageView({Key? key}) : super(key: key);
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
        title: const Text(
          'Ejemplo 2',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
      ),
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            scrollDirection: Axis.vertical,
            children: const [
              MyPost1(),
              MyPost2(),
              MyPost3(),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed:
                        null, // Necesitarías la lógica para regresar aquí
                    child: Text('Regresar'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
