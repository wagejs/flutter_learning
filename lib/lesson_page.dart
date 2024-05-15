import 'package:flutter/material.dart';
import 'widgets/lesson_card.dart';

class Lesson {
  late String title;
  late String description;
  late String imageUrl;

  Lesson({required this.title, required this.description, required this.imageUrl});
}

class LessonPage extends StatelessWidget {
  const LessonPage({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Widget> lessonList = [
        lessonCard('Book List', 'Description 1','images/street.jpg', context),
        lessonCard('List Tile', 'Description 2','images/street.jpg', context),
      ];
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Course Topics'),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: List.generate(lessonList.length, (index) => lessonList[index]),
        ),
      ),
    );
  }
}
