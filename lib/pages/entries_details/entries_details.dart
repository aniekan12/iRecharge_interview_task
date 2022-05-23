import 'package:flutter/material.dart';
import 'package:irecharge_interview_task/bLoC/models/entries.dart';
import 'package:irecharge_interview_task/utilities/constants/colors.dart';

import 'widgets/details_widget.dart';

class EntriesDetails extends StatelessWidget {
  final Entries? entries;
  const EntriesDetails({Key? key, this.entries}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkGreen,
        title: Text(entries!.aPI!),
      ),
      body: SingleChildScrollView(
        child: DetailsWidget(entries: entries),
      ),
    );
  }
}
