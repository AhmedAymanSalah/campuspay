import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import '../data/services_list_data.dart';
import 'pay_services.dart';
import 'widget/builld_item_services_screen.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const CustomTextWidget(
          text: "Services",
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: servicesList.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            // Navigate to service detail screen when tapped
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PayServicesSceen(
                  service: servicesList[index],
                ),
              ),
            );
          },
          child: BuildItemServicesScreen(index: index),
        ),
      ),
    );
  }
}
