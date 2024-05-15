import 'package:flutter/material.dart';
import 'package:flutter_learning/lesson_page.dart';

Widget lessonCard(
    String title, String description, String imageUrl, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const LessonPage()));
    },
    borderRadius: BorderRadius.circular(16.0),
    hoverColor: Colors.grey.shade200,
    child: Column(
      children: [
        Container(
          height: 142.0,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(title),
        Row(
          children: [
            Text(description), 
            const Icon(
              Icons.arrow_right,
              size: 24.0,
              color: Colors.blueAccent,
            )
          ],
        )
      ],
    ),
  );
}
