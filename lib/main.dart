import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentor_app/custom_widget/my_theme.dart';

import 'view/welcome_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      home: const WelcomePage(),
    );
  }
}
