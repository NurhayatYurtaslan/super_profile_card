import 'package:flutter/material.dart';

Widget detailWidget(
    {required IconData icon,
    required String text,
    required Color iconTextColor,
    required Color iconColor,
    required Color dividerColor}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      children: [
        Row(
          children: [
            Icon(icon, size: 30, color: iconColor),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                text,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: iconTextColor,
                ),
              ),
            ),
          ],
        ),
        Divider(
          color: dividerColor,
        ),
      ],
    ),
  );
}
