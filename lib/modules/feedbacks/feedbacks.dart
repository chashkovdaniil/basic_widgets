import 'package:basic_widgets/modules/feedbacks/feedbacks_title.dart';
import 'package:basic_widgets/modules/likes/likes_inherited/likes_inherited_model.dart';
import 'package:flutter/material.dart' hide Feedback;

import '../likes/likes_inherited/likes_notifier.dart';
import 'feedbacks_bottom.dart';
import 'feedbacks_list.dart';

class Feedbacks extends StatefulWidget {
  const Feedbacks({Key? key}) : super(key: key);

  @override
  State<Feedbacks> createState() => _FeedbacksState();
}

class _FeedbacksState extends State<Feedbacks> {
  final feedbacks = ['Блин! Круто!!!', 'Все хорошо сделано!'];

  @override
  void initState() {
    super.initState();
    print('[Lifecycle] initState');
  }

  @override
  void didUpdateWidget(covariant Feedbacks oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('[Lifecycle] didUpdateWidget');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('[Lifecycle] didChangeDependencies');
  }

  @override
  void dispose() {
    print('[Lifecycle] dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const FeedbacksTitle(),
        actions: const [FeedbacksAmountWidget()],
      ),
      body: Column(
        children: [
          Expanded(
            child: FeedbacksList(feedbacks: feedbacks),
          ),
          FeedbackBottom(
            onTapSendFeedback: (feedbackText) {
              feedbacks.add(feedbackText);
              setState(() {});
            },
            onTapLike: () {
              LikesInheritedNotifier.of(context)?.like();
              // setState(() {});
            },
          ),
        ],
      ),
      // body: ,
    );
  }
}

class FeedbacksAmountWidget extends StatefulWidget {
  const FeedbacksAmountWidget({Key? key}) : super(key: key);

  @override
  State<FeedbacksAmountWidget> createState() => _FeedbacksAmountWidgetState();
}

class _FeedbacksAmountWidgetState extends State<FeedbacksAmountWidget> {
  @override
  void initState() {
    super.initState();
    print('[FeedbacksAmountWidget] initState');
  }

  @override
  void didUpdateWidget(covariant FeedbacksAmountWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('[FeedbacksAmountWidget] didUpdateWidget');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('[FeedbacksAmountWidget] didChangeDependencies');
  }

  @override
  void dispose() {
    print('[FeedbacksAmountWidget] dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final feedbacks = LikesInheritedModel.depend(
          context,
          LikesAspect.feedbacks,
        )?.amountFeedbacks ??
        0;

    return TextButton(
      onPressed: () {},
      child: Text('$feedbacks'),
    );
  }
}
