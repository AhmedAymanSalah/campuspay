// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class CodeScreenTextFormFiled extends StatelessWidget {
  const CodeScreenTextFormFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
              backGroundColorHint: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: ColorsManager.darkBlue,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: ColorsManager.darkBlue,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              prefixIcon: Icon(
                Icons.person_outline,
                size: 20.sp,
              ),
              hintText: "Enter Your Code...",
              textInputType: TextInputType.number,
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return 'Please enter a valid email';
                }
              },
            );
  }
}