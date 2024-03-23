// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class TransferTextFiled extends StatelessWidget {
  final String labelText;
  String? prefixText;
  

  TransferTextFiled({
    super.key,
    required this.labelText,
    this.prefixText,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(

      prefixText: prefixText,
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
      labelText: labelText,
      hintText: "",
      textInputType: TextInputType.number,
      validator: (value) {
        if (value == null || value.isEmpty || !AppRegex.isEmailValid(value)) {
          return 'Please enter a valid email';
        }
      },
    );
  }
}
