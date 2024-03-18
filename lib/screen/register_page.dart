// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:campuspay/core/helpers/extentions.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:campuspay/widget/custom_textfild.dart';
import '../core/routes/routes.dart';
import '../widget/custom_elevated_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({
    super.key,
    this.onTap,
  });
  static String id = "RegisterPage";
  final Function()? onTap;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                //********************logo
                const Icon(
                  Icons.lock,
                  size: 100,
                  color: ColorsManager.darkGrey,
                ),
                const SizedBox(
                  height: 12,
                ),
                //****************Let's create an account
                Text(
                  "Let's create an account for you!",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 18,
                    fontFamily: "Pacifico",
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),

                //////////////userName textfiled
                 CustomTextField(
                  
                  type: TextFieldType.email,
                  hintText: "First Name",
                  prefixIcon: Icons.person, onchange: (data) {  },
                ),
                 CustomTextField(
                  type: TextFieldType.email,
                  hintText: "Last Name",
                  prefixIcon: Icons.person, onchange: (data) {  },
                ),
                //////////////email textfiled
                CustomTextField(
                  
                  type: TextFieldType.email,
                  hintText: "University Email",
                  prefixIcon: Icons.email_outlined, onchange: (data) {  },
                ),

                //paswored textfiled
                CustomTextField(
                  
                  type: TextFieldType.password,
                  hintText: "Password",
                  prefixIcon: Icons.lock, onchange: (data) {  },
                ),

                ////////// textformfild password
                 CustomTextField(
                  
                  type: TextFieldType.password,
                  hintText: "Confirm Password",
                  prefixIcon: Icons.lock, onchange: (data) {  },
                ),

                const SizedBox(
                  height: 35,
                ),

                //sign in button
                MyButten(
                  text: "sign Up",
                  onTap: () {
                      context.navigateToReplacement(Routes.homeScreen);
                  }
                ),

                const SizedBox(
                  height: 25,
                ),

                //or continue with
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
                            fontSize: 16,
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
                  height: 15,
                ),

                //not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
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
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Login Now',
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
    );
  }
}
