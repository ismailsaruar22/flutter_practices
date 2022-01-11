import 'package:flutter/material.dart';
import 'package:mentor_app/custom_widget/background.dart';

class LogInPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  TextEditingController useridController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String userIdErrorText = "User Id can not be empty";
  String userIdHintText = "Enter User ID";
  Color hintTextColor = Colors.grey;
  IconData userIdTextFieldPrefixIcon = Icons.person;
  Color userIdTextFieldPrefixIconColor = Colors.grey;

  LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;  
    return Scaffold(
      body: Background(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("images/Login.png"),
            const Text(
              "Log In",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: useridController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return userIdErrorText;
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      hintText: userIdHintText,
                      hintStyle: TextStyle(color: hintTextColor),
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        userIdTextFieldPrefixIcon,
                        color: userIdTextFieldPrefixIconColor,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
