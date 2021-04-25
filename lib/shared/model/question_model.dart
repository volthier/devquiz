import 'dart:convert';

import 'package:DevQuiz/shared/model/awnser_model.dart';

class QuestionModel {
  final String title;
  final List<AwnserModel> awsers;

  QuestionModel({required this.title, required this.awsers})
      : assert(
          awsers.length == 4,
        );

  factory QuestionModel.fromMap(Map<String, dynamic> map) {
    return new QuestionModel(
      title: map['title'] as String,
      awsers: List<AwnserModel>.from(
          map['awsers']?.map((x)=> AwnserModel.fromMap(x)))
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'title': this.title,
      'awsers': this.awsers,
    } as Map<String, dynamic>;
  }

  String toJson() => json.encode(toMap());
  factory QuestionModel.fromJson(String source) => QuestionModel.fromMap(json.decode(source));
}
