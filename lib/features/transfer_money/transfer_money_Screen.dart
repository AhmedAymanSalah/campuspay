// ignore_for_file: file_names

import 'package:campuspay/app_images.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/app_button.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widget/transfer_text_feild.dart';

class TransferMoney extends StatelessWidget {
  const TransferMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const CustomTextWidget(
          text: "Transfer Money",
          color: ColorsManager.lightGray,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Container(
        height: double.infinity.h,
        width: double.infinity.h,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Assets.imagesBackgrond), fit: BoxFit.cover)),
        child: Padding(
          padding:
              EdgeInsets.only(top: 65.h, left: 25.h, bottom: 30.h, right: 25.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomTextWidget(
                text: "5555  \$",
                color: ColorsManager.lightGray,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
              verticalSpace(45),
              Container(
                height: 500.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.h),
                  child: Column(
                    children: [
                      Spacer(),
                      TransferTextFiled(
                        labelText: "Recipient",
                      ),
                      verticalSpace(30),
                      TransferTextFiled(
                        labelText: "Amount",
                        prefixText: "\$",
                      ),
                      //verticalSpace(50),
                      const Spacer(),
                      AppTextButton(
                        text: "Transfer",
                        onPressed: () {},
                        buttonColor: ColorsManager.darkBlue,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
