import 'package:flutter/material.dart';

class LikesCounter extends StatelessWidget {
  const LikesCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.only(
        top: 2,
        bottom: 2,
        left: 10,
        right: 8,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: 10),
          Text(
            'Likes ',
            style: theme.textTheme.bodyLarge?.copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 10),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(10),
            child: Text('1'),
          ),
        ],
      ),
    );
  }
}
