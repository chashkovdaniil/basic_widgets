import 'package:flutter/material.dart';

class _LikesNotifier extends ValueNotifier<int> {
  _LikesNotifier([int initialLikes = 0]) : super(initialLikes);

  int get likes => value;

  void like() => value++;

  void unlike() => value--;
}

class LikesInheritedNotifier extends InheritedNotifier<_LikesNotifier> {
  final int _amountLikes;

  LikesInheritedNotifier({
    super.key,
    int initialLikes = 0,
    required super.child,
  })  : _amountLikes = initialLikes,
        super(notifier: _LikesNotifier(initialLikes));

  int get amountLikes => _amountLikes;

  static LikesInheritedNotifier? of(BuildContext context) {
    final widget =
        context.findAncestorWidgetOfExactType<LikesInheritedNotifier>();

    return widget;
  }
}
