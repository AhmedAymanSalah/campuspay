import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import '../data/services_list_data.dart';
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
        itemBuilder: (context, index) => BuildItemServicesScreen(index: index),
      ),
    );
  }
}
