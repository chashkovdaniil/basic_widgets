import 'package:flutter/cupertino.dart';

class LikesInheritedWidget extends InheritedWidget {
  final int _amountLikes;

  const LikesInheritedWidget({
    super.key,
    int initialLikes = 0,
    required super.child,
  }) : _amountLikes = initialLikes;

  int get amountLikes => _amountLikes;

  @override
  bool updateShouldNotify(covariant LikesInheritedWidget oldWidget) {
    return amountLikes != oldWidget.amountLikes;
  }

  static LikesInheritedWidget? of(BuildContext context) {
    final widget =
        context.findAncestorWidgetOfExactType<LikesInheritedWidget>();

    return widget;
  }
}
