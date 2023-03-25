import 'package:flutter/material.dart';

import 'modules/likes/likes_counter.dart';

class MyInfo extends StatelessWidget {
  /// Without inherited
  final int likes;

  const MyInfo({
    Key? key,

    /// Without inherited
    required this.likes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        LikesCounter(likes: likes),
        const SizedBox(height: 15),
        Text(
          'Чашков Даниил',
          style: theme.textTheme.headline6,
        ),
        const SizedBox(height: 15),
        const Text('Flutter разработчик в Яндекс PRO'),
      ],
    );
  }
}
