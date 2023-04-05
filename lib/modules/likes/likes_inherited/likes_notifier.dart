import 'package:flutter/material.dart';

import '../../../main.dart';

class LikesNotifier extends ValueNotifier<int> {
  LikesNotifier([int initialLikes = 0]) : super(initialLikes);
}

class LikesInheritedNotifier extends InheritedNotifier<LikesNotifier> {
  LikesInheritedNotifier({
    super.key,
    int initialLikes = 0,
    required super.child,
  }) : super(notifier: likesNotifier);

  int get likes => notifier?.value ?? 0;

  void like() {
    if (likes >= 9) {
      return;
    }
    notifier?.value++;
  }

  static LikesInheritedNotifier? of(BuildContext context) {
    final widget =
        context.dependOnInheritedWidgetOfExactType<LikesInheritedNotifier>();

    return widget;
  }
}
