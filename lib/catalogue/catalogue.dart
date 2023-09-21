import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:book/services/services.dart';
import 'package:book/shared/shared.dart';
import 'package:book/Catalogue/catalogue_book.dart';

class TopicScreen extends StatelessWidget {
  const TopicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Topic>>(
      future: FirestoreService().getTopics(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingScreen();
        } else if (snapshot.hasError) {
          return Center(
            child: ErrorMessage(message: snapshot.error.toString()),
          );
        } else if (snapshot.hasData) {
          var topics = snapshot.data!;

          return Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              title: const Text('Library', style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.bold,

              ),),
              centerTitle: false,
            ),
            body: GridView.count(
              childAspectRatio: 2.5,
              primary: false,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
              crossAxisSpacing: 40.0,
              crossAxisCount: 1,
              children: topics.map((topic) => TopicItem(topic: topic)).toList(),
            ),
            bottomNavigationBar: const BottomNav(),
          );
        } else {
          return const Text('No books here right now. We might be working on our database');
        }
      },
    );
  }
}
