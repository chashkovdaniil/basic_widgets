import 'package:flutter/material.dart';

class FeedbacksTitle extends StatefulWidget {
  /// Without inherited
  final int likes;

  const FeedbacksTitle({
    Key? key,
    required this.likes,
  }) : super(key: key);

  @override
  State<FeedbacksTitle> createState() => _FeedbacksTitleState();
}

class _FeedbacksTitleState extends State<FeedbacksTitle> {
  @override
  void initState() {
    super.initState();
    // print('[FeedbacksTitle] initState');
  }

  @override
  void didUpdateWidget(covariant FeedbacksTitle oldWidget) {
    super.didUpdateWidget(oldWidget);
    // print(
    //   '[FeedbacksTitle] didUpdateWidget'
    //   '\n[FeedbacksTitle] --------',
    // );
    // print(
    //   '[FeedbacksTitle] oldLikes: ${oldWidget.likes}, newLikes: ${widget.likes}',
    // );
    // print('[FeedbacksTitle] -----------');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // print('[FeedbacksTitle] didChangeDependencies');
  }

  @override
  void dispose() {
    // print('[FeedbacksTitle] dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // print('[FeedbacksTitle] build');

    /// Without inherited
    final likes = widget.likes;

    /// INHERITEDWIDGET
    // final likes = LikesInheritedWidget.depend(context)?.amountLikes ?? 0;

    /// NOTIFIER
    // final likes = LikesInheritedNotifier.depend(context)?.likes ?? 0;

    /// MODEL
    // final likes = LikesInheritedModel.of(
    //       context,
    //       LikesAspect.likes,
    //     )?.amountLikes ??
    //     0;

    return Text('Отзывы (likes: $likes)');
  }
}
