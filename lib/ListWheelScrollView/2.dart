import 'package:flutter/material.dart';

class MyHours extends StatelessWidget {
  final int hours;
  const MyHours({Key? key, required this.hours}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 5.0, horizontal: 10.0), // More balanced padding
      child: Text(
        hours.toString().padLeft(2, '0'), // Ensure two digits
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30, // Slightly smaller for better fit in the wheel
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
