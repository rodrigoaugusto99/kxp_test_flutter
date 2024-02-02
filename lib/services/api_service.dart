import 'dart:convert';

import 'package:my_first_app/app/dio_http_service.dart';
import 'package:my_first_app/app/http_service.dart';
import 'package:my_first_app/app/models/advice_model.dart';

class ApiService extends DioHttpService {
  final IHttpService client;

  ApiService(this.client);

  static ApiService getInstance() => ApiService(DioHttpService());
  Future<AdviceModel> getRandommVerse() async {
    final response = await client.get('https://api.adviceslip.com/advice');

    final advice = AdviceModel.fromJson(response.data);

    return advice;
  }

  Future<AdviceModel> getVerseById(String id) async {
    final response = await client.get('https://api.adviceslip.com/advice/$id');

    final jsonResponse = json.decode(response.data);

    final bibleVerse = AdviceModel.fromMap(jsonResponse);

    return bibleVerse;
  }
}
