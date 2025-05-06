import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  const MyTile({Key? key, this.text = "data", this.color = Colors.blue})
      : super(key: key);

  // Added optional parameters for more customization
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20.0, // Added a default font size
            color: Colors.white, // Added a default text color
          ),
        ),
      ),
    );
  }
}
