import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  String label;
  Color color;
  VoidCallback onPressed;
   CustomButtom({super.key, required this.label, required this.color,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 12),
        backgroundColor: color,
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
