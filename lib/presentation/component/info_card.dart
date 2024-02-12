import 'package:flutter/material.dart';

Widget infoCard(String title, String value, IconData icon) {
  return Expanded(
    child: ListTile(
      leading: Icon(icon),
      title: Text(title),
      subtitle: Text(
        value,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
