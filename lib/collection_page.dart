import 'package:flutter/material.dart';
import 'widgets/book_card.dart';

class Book {
  late String imagePath;
  late String title;
  late String synopsis;

  Book(String imagePath, String title, String synopsis);
}

class CollectionPage extends StatelessWidget {
  const CollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> bookList = [
      bookCard('images/hp-1.png', 'Harry Potter and the Philosopher`s Stone',
          'Harry Potter, an orphaned boy, discovers he is a wizard and is invited to attend Hogwarts School of Witchcraft and Wizardry. Alongside his new friends Ron and Hermione.', context),
      bookCard('images/hp-2.png', 'Harry Potter and the Chamber of Secrets',
          'Harry returns to Hogwarts for his second year, only to find the school plagued by mysterious attacks. As students are petrified and the Chamber of Secrets is opened.', context),
      bookCard('images/hp-3.png', 'Harry Potter and the Prisoner of Azkaban',
          'In his third year at Hogwarts, Harry learns about Sirius Black, an escaped convict and alleged follower of Voldemort. As the Dementors, soul-sucking guards, descend upon the school.', context),
      bookCard('images/hp-4.png', 'Harry Potter and the Goblet of Fire',
          'Harry`s fourth year brings the Triwizard Tournament to Hogwarts, a dangerous competition between three wizarding schools.', context),
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
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
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
