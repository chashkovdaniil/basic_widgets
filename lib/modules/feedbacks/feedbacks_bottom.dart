import 'package:flutter/material.dart';

class FeedbackBottom extends StatefulWidget {
  final ValueChanged<String> onTapSendFeedback;
  final VoidCallback onTapLike;

  const FeedbackBottom({
    super.key,
    required this.onTapSendFeedback,
    required this.onTapLike,
  });

  @override
  State<StatefulWidget> createState() => _FeedbackBottomState();
}

class _FeedbackBottomState extends State<FeedbackBottom> {
  late final TextEditingController textController;

  @override
  void initState() {
    textController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              widget.onTapSendFeedback(feedbackText);
            },
            icon: const Icon(Icons.send),
          ),
          IconButton(
            onPressed: () {
              widget.onTapLike();
            },
            icon: const Icon(Icons.favorite),
          ),
        ],
      ),
    );
  }
}
