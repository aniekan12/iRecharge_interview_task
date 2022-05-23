import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:irecharge_interview_task/pages/entries_home/entries_home.dart';
import 'package:irecharge_interview_task/utilities/constants/colors.dart';
import 'package:irecharge_interview_task/utilities/size_config/size_config.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Entries easily '),
        backgroundColor: AppColors.darkGreen,
      ),
      body: SizedBox(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: AppColors.red,
              ),
              onPressed: () => Get.to(() => EntriesHome()),
              child: const Text('View Entries'),
            ),
          ],
        ),
      ),
    );
  }
}
