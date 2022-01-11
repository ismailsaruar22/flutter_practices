// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mentor_app/custom_widget/background.dart';
import 'package:mentor_app/custom_widget/custom_button.dart';
import 'package:mentor_app/custom_widget/my_theme.dart';
import 'package:mentor_app/view/login_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "WELCOME TO MENTOR APP",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Theme.of(context).colorScheme.primaryVariant),
              ),
              Image.asset(
                "images/undraw_Balloons.png",
                width: size.width * 0.6,
              ),
              CustomButton(
                buttonColor: MyTheme.LogInButtonColor,
                buttonText: "Log In",
                textColor: Theme.of(context).colorScheme.primary,
                handleButtonClick: () {
                  logInButtonClickHandler(context);
                },
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                buttonColor: MyTheme.SignUpButtonColor,
                buttonText: "Sign Up",
                textColor: Theme.of(context).colorScheme.primary,
                handleButtonClick: signUpButtonClickHandler,
              ),
            ],
          ),
        ),
      ),
    );
  }

  logInButtonClickHandler(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (builder) => LogInPage()));
  }

  signUpButtonClickHandler() {}
}
