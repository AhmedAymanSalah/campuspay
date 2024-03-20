// ignore_for_file: file_names

import 'package:campuspay/app_images.dart';
import 'package:campuspay/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const Image(image: AssetImage(Assets.imagesError)),
              const Spacer(),
              AppTextButton(
                text: "Go",
                onPressed: () {},
                buttonColor: Colors.redAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
