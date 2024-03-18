// import 'package:campuspay/widget/custom_elevated_button.dart';
// import 'package:campuspay/widget/custom_text_widget.dart';
// import 'package:flutter/material.dart';

// import '../app_images.dart';
// import '../constant.dart';
// import 'attention_page.dart';
// import 'onboarding_page2.dart';

// class OnboardingPage1 extends StatelessWidget {
//   const OnboardingPage1({super.key});
//   static const String id = "OnboardingPage1";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               // app name (text)
//               const Padding(
//                 padding: EdgeInsets.symmetric(vertical: 20),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     CustomTextWidget(
//                       color: kPrimaryColor1,
//                       text: "Cumpus",
//                       fontWeight: FontWeight.bold,
//                       fontSize: 26,
//                       fontFamily: "Agbalumo",
//                     ),
//                     CustomTextWidget(
//                       text: "pay",
//                       color: kPrimaryColor1,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 26,
//                       fontFamily: "Agbalumo",
//                     ),
//                   ],
//                 ),
//               ),
//               // photo

//               const SizedBox(
//                 height: 25,
//               ),
//               Container(
//                 height: 350,
//                 width: double.infinity,
//                 decoration: const BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage(Assets.imagesOnboarding1),
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//               ),
//               //text from to line
//               const CustomTextWidget(
//                 text: "Your hassle-free solution for",
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//               const CustomTextWidget(
//                 text: "university payments",
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),

//               // 2 button
//               const SizedBox(
//                 height: 50,
//               ),
//               AppTextButton(
//                 onPressed: () {
//                   Navigator.pushNamed(context, OnboardingPage2.id);
//                 },
//                 text: "Continue",
//                 textColor: Colors.white,
//               ),
//               AppTextButton(
//                 text: "Sign In",
//                 onPressed: () {
//                   Navigator.pushReplacementNamed(context, AttentionPage.id);
//                 },
//                 buttonColor: Colors.white,
//                 textColor: kPrimaryColor1,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
