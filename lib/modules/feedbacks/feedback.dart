import 'package:flutter/material.dart';

class Feedback extends StatelessWidget {
  final String text;

  const Feedback({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Text(text),
    );
  }
}
