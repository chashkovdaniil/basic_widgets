import 'package:flutter/material.dart' hide Feedback;

import 'feedback.dart';

class FeedbacksList extends StatelessWidget {
  final List<String> feedbacks;
  const FeedbacksList({Key? key, required this.feedbacks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: feedbacks.length,
      itemBuilder: (context, index) {
        return Feedback(text: feedbacks[index]);
      },
    );
  }
}
