import 'package:flutter/material.dart';
import 'package:solid_software_task/helper/app_colors.dart';
import 'package:solid_software_task/helper/app_extra_functions.dart';
import 'package:solid_software_task/helper/app_text_styles.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color bgColor = AppColors.white;
  Color textColor = AppColors.black;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          bgColor = AppExtraFunctions.randomHexColorGenerator();
          textColor = AppExtraFunctions.getTextColorForBackgroundColor(bgColor);
        });
      },
      child: Scaffold(
        backgroundColor: bgColor,
        body: Center(
          child: Text(
            "Hello there",
            style: AppTextStyle.heading.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
