import 'package:flutter/material.dart';

import 'likes_counter.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        const LikesCounter(),
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
