import 'package:basic_widgets/modules/likes/likes_inherited/likes_notifier.dart';
import 'package:flutter/material.dart';

class LikesCounter extends StatelessWidget {
  const LikesCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    /// NOTIFIER
    final likes = LikesInheritedNotifier.depend(context)?.likes ?? 0;

    /// INHERITEDWIDGET
    // final likes = LikesInheritedWidget.of(context)?.amountLikes ?? 0;

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
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(10),
            child: Text('$likes'),
          ),
        ],
      ),
    );
  }
}
