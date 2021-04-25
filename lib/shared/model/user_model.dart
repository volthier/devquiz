import 'dart:convert';

class UserModel {
  final String name;
  final String photoUrl;
  final int score;

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  const UserModel({
    required this.name,
    required this.photoUrl,
     this.score = 0,
  });



  factory UserModel.fromMap(Map<String, dynamic> map) {
    return new UserModel(
      name: map['name'] as String,
      photoUrl: map['photoUrl'] as String,
      score: map['score'] as int,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'name': this.name,
      'photoUrl': this.photoUrl,
      'score': this.score,
    } as Map<String, dynamic>;
  }

//</editor-fold>

  String toJson() => json.encode(toMap());
  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));
}
