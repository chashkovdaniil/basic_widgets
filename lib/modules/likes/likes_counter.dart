import 'package:flutter/material.dart';

class LikesCounter extends StatelessWidget {
  /// Without inherited
  final int likes;

  const LikesCounter({
    Key? key,

    /// Without inherited
    required this.likes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    /// Without inherited
    /// В параметрах конструктора
    /// INHERITEDWIDGET
    // final likes = LikesInheritedWidget.of(context)?.amountLikes ?? 0;

    /// NOTIFIER
    // final likes = LikesInheritedNotifier.of(context)?.likes ?? 0;

    /// Model
    // final likes = LikesInheritedModel.of(
    //   context,
    //   LikesAspect.likes,
    // )?.amountLikes ??
    //     0;

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
