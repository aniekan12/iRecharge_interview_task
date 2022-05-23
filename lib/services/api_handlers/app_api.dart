import 'package:dio/dio.dart';
import 'package:irecharge_interview_task/services/api_handlers/base_dio.dart';
import 'package:irecharge_interview_task/utilities/constants/endpoints.dart';

class AppApi {
  static final Dio _dio = BaseDio.getExistingDio;

  static Future getEntries() {
    return _dio.get(entriesUrl);
  }
}
