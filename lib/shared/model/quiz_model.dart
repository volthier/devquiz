import 'dart:convert';

import 'package:DevQuiz/shared/model/question_model.dart';

enum Level{facil, medio, dificil, perito}

extension LevelStringExt on String {
  Level get parse => {
    "facil": Level.facil,
    "medio": Level.medio,
    "dificil": Level.dificil,
    "perito": Level.perito
  }[this]!;
}

extension LevelExt on Level {
  String get parse => {
    Level.facil:"facil",
    Level.medio:"medio",
    Level.dificil:"dificil",
    Level.perito:"perito"
  }[this]!;
}


class QuizModel {
  final String title;
  final List<QuestionModel> questions;
  final int questionAwnsered;
  final String imagem;
  final Level level;

  QuizModel({
    required this.title,
    required this.questions,
    this.questionAwnsered = 0,
    required this.imagem,
    required this.level,
  });

  factory QuizModel.fromMap(Map<String, dynamic> map) {
    return new QuizModel(
      title: map['title'] as String,
      questions:List<QuestionModel>.from(
        map['questions']?.map((x)=> QuestionModel.fromMap(x))),
      questionAwnsered: map['questionAwnsered'] as int,
      imagem: map['imagem'] as String,
      level: map['level'].toString().parse as Level,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'title': this.title,
      'questions': this.questions,
      'questionAwnsered': this.questionAwnsered,
      'imagem': this.imagem,
      'level': this.level.parse,
    } as Map<String, dynamic>;
  }

  String toJson() => json.encode(toMap());
  factory QuizModel.fromJson(String source) => QuizModel.fromMap(json.decode(source));

}
