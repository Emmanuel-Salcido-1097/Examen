import 'package:flutter/material.dart';

class MyMinutes extends StatelessWidget {
  final int minutes;
  const MyMinutes({Key? key, required this.minutes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 5.0, horizontal: 10.0), // More balanced padding
      child: Text(
        minutes.toString().padLeft(2, '0'), // Ensure two digits
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30, // Slightly smaller for better fit
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
