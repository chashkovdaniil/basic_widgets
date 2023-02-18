import 'package:basic_widgets/avatar.dart';
import 'package:basic_widgets/my_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'feedbacks.dart';
import 'social_buttons.dart';
import 'works.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Center(
                child: Avatar(),
              ),
              const SizedBox(height: 20),
              const MyInfo(),
              const SizedBox(height: 30),
              const Spacer(),
              const Works(),
              const Spacer(),
              const SizedBox(height: 30),
              const SocialButtons(),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      child: const Text('Отзывы'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const Feedbacks(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
