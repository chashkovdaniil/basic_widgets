import 'package:flutter/material.dart';

class Feedbacks extends StatefulWidget {
  const Feedbacks({Key? key}) : super(key: key);

  @override
  State<Feedbacks> createState() => _FeedbacksState();
}

class _FeedbacksState extends State<Feedbacks> {
  final textController = TextEditingController();
  final feedbacks = ['Блин! Круто!!!', 'Все хорошо сделано!'];

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Отзывы'),
      ),
      body: ListView.builder(
        itemCount: feedbacks.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(20),
            child: Text(feedbacks[index]),
          );
        },
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: textController,
                  decoration: const InputDecoration(
                    hintText: 'Ваш положительный отзыв...',
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  final feedbackText = textController.text;

                  feedbacks.add(feedbackText);
                  setState(() {});
                },
                icon: const Icon(Icons.send),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
