import 'package:flutter/material.dart';

class _LikesNotifier extends ValueNotifier<int> {
  _LikesNotifier([int initialLikes = 0]) : super(initialLikes);
}

class LikesInheritedNotifier extends InheritedNotifier<_LikesNotifier> {
  LikesInheritedNotifier({
    super.key,
    int initialLikes = 0,
    required super.child,
  }) : super(notifier: _LikesNotifier(initialLikes));

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
