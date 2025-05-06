import 'package:flutter/material.dart';

// Import corrected files
import 'ListWheelScrollView/2.dart'; // Asegúrate de que la ruta sea correcta
import 'ListWheelScrollView/3.dart'; // Asegúrate de que la ruta sea correcta
import 'ListWheelScrollView/4.dart'; // Asegúrate de que la ruta sea correcta

class MyListWheelScrollView extends StatefulWidget {
  const MyListWheelScrollView({Key? key}) : super(key: key);

  @override
  _MyListWheelScrollViewState createState() => _MyListWheelScrollViewState();
}

class _MyListWheelScrollViewState extends State<MyListWheelScrollView> {
  int currentHour = 0;
  int currentMinute = 0;
  int currentAMPM = 0; // 0 for AM, 1 for PM

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
        title: const Text(
          'ListWheelScrollView',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
      ),
      body: Center(
        // Center the content
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // hours wheel
                SizedBox(
                  width: 70,
                  height: 200, // Added height
                  child: ListWheelScrollView.useDelegate(
                    onSelectedItemChanged: (value) {
                      setState(() {
                        currentHour = value;
                      });
                    },
                    itemExtent: 50,
                    perspective: 0.005,
                    diameterRatio: 1.2,
                    physics: const FixedExtentScrollPhysics(),
                    childDelegate: ListWheelChildBuilderDelegate(
                      childCount: 12, // Changed to 12
                      builder: (context, index) {
                        return MyHours(hours: index + 1); // Use MyHours
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                  child: Text(
                    ':',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // minutes wheel
                SizedBox(
                  width: 70,
                  height: 200, // Added height
                  child: ListWheelScrollView.useDelegate(
                    onSelectedItemChanged: (value) {
                      setState(() {
                        currentMinute = value;
                      });
                    },
                    itemExtent: 50,
                    perspective: 0.005,
                    diameterRatio: 1.2,
                    physics: const FixedExtentScrollPhysics(),
                    childDelegate: ListWheelChildBuilderDelegate(
                      childCount: 60,
                      builder: (context, index) {
                        return MyMinutes(minutes: index); // Use MyMinutes
                      },
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                // am/pm wheel
                SizedBox(
                  width: 70,
                  height: 200,
                  child: ListWheelScrollView.useDelegate(
                    onSelectedItemChanged: (value) {
                      setState(() {
                        currentAMPM = value;
                      });
                    },
                    itemExtent: 50,
                    perspective: 0.005,
                    diameterRatio: 1.2,
                    physics: const FixedExtentScrollPhysics(),
                    childDelegate: ListWheelChildBuilderDelegate(
                      childCount: 2,
                      builder: (context, index) {
                        return MyAMPM(isItAM: index == 0); // Use MyAMPM
                      },
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Regresar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
