import 'package:flutter/material.dart';
import 'package:book/services/models.dart';
import 'package:book/shared/progress_bar.dart';

class TopicItem extends StatelessWidget {
  final Topic topic;
  const TopicItem({super.key, required this.topic});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: topic.img,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => TopicScreen(topic: topic),
              ),
            );
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                flex: 3,
   
                  child: Image.asset(
                    'assets/covers/${topic.img}',
                  ),
                
              ),
              Flexible(
                flex: 7,
          child: Padding (
            padding: const EdgeInsets.only(left: 20, right: 5),
              child: Column(
                children: [
                  Flexible(
                    child: Padding (
                      padding: const EdgeInsets.only(left: 5, right: 0),
                    child: Align(
                      alignment: Alignment.centerLeft, 
                        child: Text(
                          topic.title,
                          style: const TextStyle(
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.fade,
                          softWrap: false,
                        ),
                      
                    ),
                    )
                  ),
                  Flexible(child: TopicProgress(topic: topic)),
                ],
              ),
          ),
          )
            ],
          ),
        ),
      ),
    );
  }
}

class TopicScreen extends StatelessWidget {
  final Topic topic;

  const TopicScreen({super.key, required this.topic});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: ListView(children: [
        Hero(
          tag: topic.img,
          child: Image.asset('assets/covers/${topic.img}',
              width: MediaQuery.of(context).size.width),
        ),
        Text(
          topic.title,
          style:
              const TextStyle(height: 2, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ]),
    );
  }
}

