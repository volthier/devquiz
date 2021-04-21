import 'package:DevQuiz/challenge/widgets/awnser/awnser_widget.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {

  final String title;

  const QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(title,
          style: AppTextStyles.heading,),

          SizedBox(
            height: 24,
          ),
          AwnserWidget(title: "Tu ja estudou Flutter hoje Mariooouuu?", isRight: true, isSelected: true,),
          AwnserWidget(title: "Tu ja estudou Flutter hoje Mariooouuu?", isRight: false, isSelected: false,),
          AwnserWidget(title: "Tu ja estudou Flutter hoje Mariooouuu?", isRight: false, isSelected: false,),
          AwnserWidget(title: "Tu ja estudou Flutter hoje Mariooouuu?", isRight: false, isSelected: false,),
        ],
      ),
    );
  }
}
