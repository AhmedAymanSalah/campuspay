import 'package:campuspay/core/helpers/extentions.dart';
import 'package:campuspay/core/routes/routes.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:campuspay/widget/custom_elevated_button.dart';
import 'package:campuspay/widget/custom_text_widget.dart';
import '../widget/custom_textfild.dart';
import 'register_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
    this.onTap,
  });
  static String id = "LogInPage";
  final Function()? onTap;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formKey = GlobalKey();
  // text editing controller
  String? email;
  String? password;

  // sign user in method

  // error message to user
  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.deepPurple,
          title: Text(
            message,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }

  void handleTextChange(String? data, String field) {
    setState(() {
      if (field == 'email') {
        email = data;
      } else if (field == 'password') {
        password = data;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ////////// 2 text 1- welcome back 2- sign in to your account
                  const SizedBox(
                    height: 30,
                  ),
                  //********************logo
                  const Icon(
                    Icons.lock,
                    size: 100,
                    color: ColorsManager.darkGrey,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // text
                  CustomTextWidget(
                    text: "Welcome Back you've been missed!",
                    color: Colors.grey.shade700,
                    fontFamily: "Pacifico",
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  ////////// textformfild email
                  CustomTextField(
                    onchange: (data) {
                      handleTextChange(data, 'email');
                    },
                    validator: (data) {
                      if (data == null) {
                        return "Email is required";
                      } else if (data.length > 50) {
                        return "Email can't be more than 50";
                      } else if (data.length < 4) {
                        return "Email can't be less than 4";
                      }
                      return null;
                    },
                    type: TextFieldType.email,
                    hintText: "University Email",
                    prefixIcon: Icons.email_outlined,
                  ),

                  ////////// textformfild password
                  CustomTextField(
                    onchange: (data) {
                      handleTextChange(data, 'password');
                    },
                    validator: (data) {
                      if (data == null) {
                        return "Password is required";
                      } else if (data.length > 50) {
                        return "Password can't be more than 50";
                      } else if (data.length < 4) {
                        return "Password can't be less than 4";
                      }
                      return null;
                    },
                    type: TextFieldType.password,
                    hintText: "Password",
                    prefixIcon: Icons.lock,
                  ),

                  ////////// forget password?
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forget Password?',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontFamily: "Roboto Slab",
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ///////// button login
                  const SizedBox(
                    height: 25,
                  ),

                  MyButten(
                    text: "Sign In",
                    onTap: () {
                      context.navigateToReplacement(Routes.homeScreen);
                    },
                  ),
                  ////////// you donont have accunt
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'or ',
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontFamily: "Roboto Slab",
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Not a member?',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontFamily: "Roboto Slab",
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, RegisterPage.id);
                        },
                        child: const Text(
                          'Register Now',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Agbalumo",
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
