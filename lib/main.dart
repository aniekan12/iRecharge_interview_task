import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:irecharge_interview_task/pages/home/home.dart';
import 'package:irecharge_interview_task/services/providers.dart';
import 'package:irecharge_interview_task/utilities/constants/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: GetMaterialApp(
        theme: themeData,
        home: const Home(),
      ),
    );
  }
}
