import 'package:campuspay/features/login/ui/widgets/icon_and_Text.dart';
import 'package:campuspay/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/widgets/app_button.dart';
import '../logic/cubit/login_cubit.dart';
import 'widgets/dont_have_account_text.dart';
import 'widgets/email_and_password.dart';
import 'widgets/login_bloc_listener.dart';
import 'widgets/terms_and_conditions_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      // appBar: AppBar(
      //   backgroundColor: Colors.grey[200],
      //   elevation: 0,
      //   iconTheme: const IconThemeData(color: Colors.black),
      // ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(20),
                  const IconAndText(),
                  verticalSpace(30),
                  Column(
                    children: [
                      const EmailAndPassword(),
                      verticalSpace(15),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: CustomTextWidget(
                          text: "Forget Password?",
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.sp,
                        ),
                      ),
                      verticalSpace(25),
                      AppTextButton(
                        text: "Login",
                        onPressed: () {
                          validateThenDoLogin(context);
                        },
                      ),
                      verticalSpace(14),
                      const TermsAndConditionsText(),
                      verticalSpace(20),
                      const DontHaveAccountText(),
                      const LoginBlocListener(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
