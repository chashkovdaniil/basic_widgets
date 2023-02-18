import 'package:flutter/material.dart';

class _Works {
  const _Works._();

  static const work1 = ['Разработать приложение с нуля', '100\$'];
  static const work2 = ['Мобильное приложение + DB', '150\$'];
  static const work3 = ['Приложение + бэкенд', '200\$'];
  static const work4 = ['Мобильное приложение + сайт', '250\$'];

  static const allWorks = [work1, work2, work3, work4];
}

class Works extends StatelessWidget {
  const Works({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 120,
        maxHeight: 200,
      ),
      child: RotatedBox(
        quarterTurns: 1,
        child: ListWheelScrollView(
          itemExtent: 200,
          children: List.generate(
            _Works.allWorks.length,
            (index) {
              return RotatedBox(
                quarterTurns: -1,
                child: Work(index: index),
              );
            },
          ).reversed.toList(),
        ),
      ),
    );
  }
}

class Work extends StatelessWidget {
  final int index;
  const Work({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              _Works.allWorks[index][0],
              style: theme.textTheme.headline6,
            ),
            const Spacer(),
            Text(
              _Works.allWorks[index][1],
              style: theme.textTheme.displaySmall,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
