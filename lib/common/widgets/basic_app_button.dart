// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BasicAppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double? height;
  const BasicAppButton(
      {super.key, required this.onPressed, required this.title, this.height});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            minimumSize: Size.fromHeight(height ?? 50)),
        child: Text(
          title,
          style: TextStyle(
              fontSize: 14, color: Colors.white, fontWeight: FontWeight.w800),
        ));
  }
}
