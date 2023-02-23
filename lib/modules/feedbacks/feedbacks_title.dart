import 'package:flutter/material.dart';

import '../likes/likes_inherited/likes_notifier.dart';

class FeedbacksTitle extends StatelessWidget {
  const FeedbacksTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// NOTIFIER
    final likes = LikesInheritedNotifier.depend(context)?.likes ?? 0;

    /// INHERITEDWIDGET
    // final likes = LikesInheritedWidget.of(context)?.amountLikes ?? 0;

    return Text('Отзывы (likes: $likes)');
  }
}
