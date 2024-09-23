import 'package:flutter/material.dart';

class BasicAppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double? height;
  final String style;
  const BasicAppButton({
    required this.onPressed,
    required this.title,
    this.height,
    required this.style, // Keep the style parameter
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(height ?? 60),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white, // Set the text color to white
        ),
      ),
    );
  }
}
