import 'package:basic_widgets/modules/feedbacks/feedbacks_title.dart';
import 'package:flutter/material.dart' hide Feedback;

import 'feedbacks_bottom.dart';
import 'feedbacks_list.dart';

class Feedbacks extends StatefulWidget {
  /// Without inherited
  final int likes;

  const Feedbacks({
    Key? key,

    /// Without inherited
    required this.likes,
  }) : super(key: key);

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
    print('[Lifecycle] build');

    return Scaffold(
      appBar: AppBar(
        title: FeedbacksTitle(
          likes: widget.likes,
        ),
        // actions: const [FeedbacksAmountWidget()],
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
              // LikesInheritedNotifier.of(context)?.like();
              // setState(() {});
            },
          ),
        ],
      ),
      // body: ,
    );
  }
}
