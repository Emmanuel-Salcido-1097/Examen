import 'package:flutter/material.dart';

class MyAMPM extends StatelessWidget {
  final bool isItAM;
  const MyAMPM({Key? key, required this.isItAM}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 5.0, horizontal: 10.0), // More balanced padding
      child: Text(
        isItAM ? 'AM' : 'PM', // Consistent capitalization
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30, // Consistent font size
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
