import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  String hintText;
  IconData icon;
  TextEditingController controller;
   CustomField({super.key,required this.icon,required this.hintText,required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: "Enter your $hintText here",
            hintStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
            suffixIcon: Icon(
              icon,
              color: Colors.blue,
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
