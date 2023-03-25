import 'package:flutter/material.dart';

import 'main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// Without inherited
    const initialLikes = 0;

    /// MODEL
    // return LikesInheritedModel(
    //   amountLikes: initialLikes,
    //   amountFeedbacks: 10,

    /// NOTIFIER
    // return LikesInheritedNotifier(
    /// INHERITED
    // return LikesInheritedWidget(
    // initialLikes: initialLikes,
    child:
    return MaterialApp(
      title: 'Basic Widgets',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: buildElevatedButtonStyle(),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black87,
        ),
      ),
      home: const MainPage(
        /// Without inherited
        likes: initialLikes,
      ),
      // )
      // ,
    );
  }

  ButtonStyle? buildElevatedButtonStyle() {
    return ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.black87),
      shape: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.pressed)) {
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          );
        }
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        );
      }),
      padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
      animationDuration: const Duration(milliseconds: 700),
    );
  }
}
