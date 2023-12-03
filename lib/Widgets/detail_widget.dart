import 'package:flutter/material.dart';

Widget detailWidget({required IconData icon, required String text, required Color iconColor}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      children: [
        Row(
          children: [
            Icon(
              icon,
              size: 30,
              color: iconColor
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                text,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                ),
              ),
            ),
          ],
        ),
        const Divider(),
      ],
    ),
  );
}
