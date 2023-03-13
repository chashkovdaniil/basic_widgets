import 'package:flutter/cupertino.dart';

enum LikesAspect { likes, feedbacks }

class LikesInheritedModel extends InheritedModel<LikesAspect> {
  final int amountLikes;
  final int amountFeedbacks;

  const LikesInheritedModel({
    required this.amountLikes,
    this.amountFeedbacks = 0,
    super.key,
    required super.child,
  });

  @override
  bool updateShouldNotify(covariant LikesInheritedModel oldWidget) {
    return oldWidget.amountFeedbacks != amountFeedbacks ||
        oldWidget.amountLikes != amountLikes;
  }

  @override
  bool updateShouldNotifyDependent(
    covariant LikesInheritedModel oldWidget,
    Set dependencies,
  ) {
    final isDifferentLikes = dependencies.contains(LikesAspect.likes) &&
        amountLikes != oldWidget.amountLikes;

    if (isDifferentLikes) {
      return true;
    }

    final isDifferentFeedbacks = dependencies.contains(LikesAspect.feedbacks) &&
        amountFeedbacks != oldWidget.amountFeedbacks;

    if (isDifferentFeedbacks) {
      return true;
    }

    return false;
  }

  static LikesInheritedModel? of(BuildContext context) {
    final widget = context.findAncestorWidgetOfExactType<LikesInheritedModel>();

    return widget;
  }

  static LikesInheritedModel? depend(
    BuildContext context, [
    LikesAspect? aspect,
  ]) {
    final widget =
        context.dependOnInheritedWidgetOfExactType<LikesInheritedModel>(
      aspect: aspect,
    );

    return widget;
  }
}
