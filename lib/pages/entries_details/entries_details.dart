import 'package:flutter/material.dart';
import 'package:irecharge_interview_task/bLoC/models/entries.dart';

class EntriesDetails extends StatelessWidget {
  final Entries? entries;
  const EntriesDetails({Key? key, this.entries}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(entries!.aPI!),
      ),
    );
  }
}
