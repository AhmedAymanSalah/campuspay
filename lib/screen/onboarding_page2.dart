import 'package:campuspay/widget/custom_elevated_button.dart';
import 'package:campuspay/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';
import '../app_images.dart';
import '../core/theme/colors.dart';
import '../features/attention/ui/attention_Screen.dart';

class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({super.key});
  static const String id = "OnboardingPage2";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // app name (text)
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextWidget(
                      text: "Cumpus",
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      fontFamily: "Agbalumo",
                    ),
                    CustomTextWidget(
                      text: "pay",
                      color: ColorsManager.mainBlue,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      fontFamily: "Agbalumo",
                    ),
                  ],
                ),
              ),
              // photo
              Container(
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(Assets.imagesOnboarding2))),
              ),
              const SizedBox(
                height: 25,
              ),
              //text from to line
              const CustomTextWidget(
                text: "Manage your money wisely",
                fontSize: 23,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center,
              ),
              // text 2
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                child: CustomTextWidget(
                  text:
                      "Track your money flows, balance, and everyday transactions on the go.",
                  textAlign: TextAlign.center,
                ),
              ),

              // 2 button
              const SizedBox(
                height: 30,
              ),
              AppTextButton(
                onPressed: () {
                  Navigator.pushNamed(context, AttentionScreen.id);
                },
                text: "Get Start",
                textColor: Colors.white,
              ),
              AppTextButton(
                text: "Sign In",
                onPressed: () {
                  Navigator.pushReplacementNamed(context, AttentionScreen.id);
                },
                buttonColor: Colors.white,
                textColor: ColorsManager.mainBlue,
              ),
              //const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
