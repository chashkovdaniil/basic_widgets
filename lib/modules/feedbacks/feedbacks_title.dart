import 'package:basic_widgets/modules/likes/likes_inherited/likes_inherited_model.dart';
import 'package:flutter/material.dart';

class FeedbacksTitle extends StatefulWidget {
  const FeedbacksTitle({Key? key}) : super(key: key);

  @override
  State<FeedbacksTitle> createState() => _FeedbacksTitleState();
}

class _FeedbacksTitleState extends State<FeedbacksTitle> {
  @override
  void initState() {
    super.initState();
    print('[FeedbacksTitle] initState');
  }

  @override
  void didUpdateWidget(covariant FeedbacksTitle oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('[FeedbacksTitle] didUpdateWidget');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('[FeedbacksTitle] didChangeDependencies');
  }

  @override
  void dispose() {
    print('[FeedbacksTitle] dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /// MODEL
    final likes = LikesInheritedModel.depend(
          context,
          LikesAspect.likes,
        )?.amountLikes ??
        0;

    /// NOTIFIER
    // final likes = LikesInheritedNotifier.depend(context)?.likes ?? 0;

    /// INHERITEDWIDGET
    // final likes = LikesInheritedWidget.depend(context)?.amountLikes ?? 0;

    return Text('Отзывы (likes: $likes)');
  }
}
