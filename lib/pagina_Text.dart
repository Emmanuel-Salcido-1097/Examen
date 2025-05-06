import 'package:flutter/material.dart';

class MyTextStyle extends StatelessWidget {
  const MyTextStyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Estilos definidos dentro del build (ya que son usados solo aquí)
    const pinkFont = TextStyle(
      fontSize: 16,
      color: Colors.pink,
      fontStyle: FontStyle.normal,
    );

    const greenFont = TextStyle(
      fontSize: 30,
      color: Colors.green,
      fontStyle: FontStyle.italic,
    );

    const paragraphFont = TextStyle(
      fontSize: 14,
      color: Colors.purple,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
        title: const Text(
          'T E X T',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 20),
              const Text("Text Widget Tutorial"),
              Text(
                "How to customise and style texts with flutter :D",
                style: pinkFont,
              ),
              Text(
                "Another text widget",
                style: greenFont,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "The birth centenary of Father of the Nation Bangabandhu Sheikh Mujibur Rahman is being celebrated across the country in 2020-21. Under the ICT Division of the Government of the People’s Republic of Bangladesh, different initiatives have been taken by the Bangladesh Computer Council’s iDEA project to organize the Mujib Year, most notably the “Bangabandhu Innovation Grant 2020 (BIG)” event.",
                      style: paragraphFont,
                      textAlign: TextAlign.justify,
                      textDirection: TextDirection.ltr,
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
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
