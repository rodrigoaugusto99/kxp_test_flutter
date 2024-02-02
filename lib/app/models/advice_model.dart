// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AdviceModel {
  final String id;
  final String advice;

  AdviceModel({
    required this.id,
    required this.advice,
  });

  factory AdviceModel.fromMap(Map<String, dynamic> map) {
    final slip = map['slip'];
    return AdviceModel(
      id: slip['id'].toString(),
      advice: slip['advice'] ?? '',
    );
  }

  factory AdviceModel.fromJson(String source) =>
      AdviceModel.fromMap(json.decode(source) as Map<String, dynamic>);

  /*ou...
  factory BibleVerseModel.fromJson(String source) {
    final jsonMap = json.decode(source) as Map<String, dynamic>;
    return BibleVerseModel.fromMap(jsonMap);
  } */
}
