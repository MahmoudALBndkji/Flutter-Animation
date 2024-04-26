import 'package:flutter/material.dart';

TextButton customTextButton({
  required Function() function,
  required String buttonText,
  required IconData icon,
}) =>
    TextButton(
      onPressed: function,
      style: TextButton.styleFrom(
        backgroundColor: Colors.blue.withOpacity(0.8),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            buttonText,
            style: const TextStyle(color: Colors.white, fontSize: 15.0),
          ),
          const SizedBox(width: 8),
          Icon(icon, color: Colors.black),
        ],
      ),
    );
