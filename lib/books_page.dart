import 'package:flutter/material.dart';
import 'widgets/book_card.dart';

class Book {
  late String imagePath;
  late String title;
  late String synopsis;

  Book(String imagePath, String title, String synopsis);
}

class BooksPage extends StatelessWidget {
  const BooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> bookList = [
      bookCard('images/hp-1.png', 'Harry Potter and the Philosopher`s Stone',
          'Harry Potter, an orphaned boy, discovers he is a wizard and is invited to attend Hogwarts School of Witchcraft and Wizardry. Alongside his new friends Ron and Hermione, Harry unravels the mystery of the Philosopher`s Stone, a powerful object that grants immortality.'),
      bookCard('images/hp-2.png', 'Harry Potter and the Chamber of Secrets',
          'Harry returns to Hogwarts for his second year, only to find the school plagued by mysterious attacks. As students are petrified and the Chamber of Secrets is opened, Harry delves into the ancient history of the school and uncovers a horrifying truth.'),
      bookCard('images/hp-3.png', 'Harry Potter and the Prisoner of Azkaban',
          'In his third year at Hogwarts, Harry learns about Sirius Black, an escaped convict and alleged follower of Voldemort. As the Dementors, soul-sucking guards, descend upon the school, Harry uncovers the truth about Sirius and a powerful connection to his own past.'),
      bookCard('images/hp-4.png', 'Harry Potter and the Goblet of Fire',
          'Harry`s fourth year brings the Triwizard Tournament to Hogwarts, a dangerous competition between three wizarding schools. Unexpectedly, Harry becomes a fourth participant, leading to treacherous tasks and dark revelations'),
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Our Collection'),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Column(
              children:
                  List.generate(bookList.length, (index) => bookList[index]),
            ),
          ],
        )),
      ),
    );
  }
}
