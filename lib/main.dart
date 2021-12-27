import 'package:flutter/material.dart';

import 'FrontEnd/AuthUI/sign_up.dart';

void main(){
  runApp(
    const MaterialApp(
      title: 'Mentor',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      home: SignUpPage(),
    ),
  );
}