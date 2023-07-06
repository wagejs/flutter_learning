import 'package:flutter/material.dart';

Widget bookCard(String imagePath, String title, String synopsis) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 250.0,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        const SizedBox(height: 12.0),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 6.0),
        Text(
          synopsis,
          style: TextStyle(fontSize: 12),
        ),
        const SizedBox(height: 16.0),
      ],
    );
