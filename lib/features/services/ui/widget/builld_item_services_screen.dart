import 'package:campuspay/features/services/data/services_list_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/custom_text_widget.dart';

class BuildItemServicesScreen extends StatelessWidget {
  final int index;

  const BuildItemServicesScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
      child: SizedBox(
        height: 60.h,
        width: 50.w,
        //color: Colors.teal,
        child: Row(
          children: [
            CircleAvatar(
              child: Image.asset(servicesList[index].image),
            ),
            CustomTextWidget(text: servicesList[index].title),
          ],
        ),
      ),
    );
  }
}
