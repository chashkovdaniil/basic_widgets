import 'package:basic_widgets/social_buttons.dart';
import 'package:basic_widgets/works.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'avatar.dart';
import 'modules/feedbacks/feedbacks.dart';
import 'my_info.dart';

class MainPage extends StatelessWidget {
  /// Without likes
  final int likes;

  const MainPage({
    super.key,

    /// Without likes
    required this.likes,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Center(
                  child: Avatar(),
                ),
                const SizedBox(height: 20),
                MyInfo(
                  /// Without likes
                  likes: likes,
                ),
                const SizedBox(height: 30),
                const Works(),
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
                              builder: (_) => Feedbacks(
                                /// Without likes
                                likes: likes,
                              ),
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
      ),
    );
  }
}
