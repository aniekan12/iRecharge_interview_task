import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:irecharge_interview_task/bLoC/models/entries.dart';
import 'package:irecharge_interview_task/services/api_handlers/app_api.dart';

class EntriesViewModel extends ChangeNotifier {
  List<Entries> _entries = [];

  List<Entries> get entries => _entries;

  Future getEntries() async {
    Response response = await AppApi.getEntries();
    if (response.statusCode == 200) {
      _entries = List<Entries>.from(response.data['entries']
          .map((entriess) => Entries.fromJson(entriess)));
      return _entries;
    }
  }
}
