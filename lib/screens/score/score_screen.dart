import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controllers/question_controllers.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/photo.png",
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              const Spacer(
                flex: 3,
              ),
              Text(
                'Score',
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    ?.copyWith(color: KSecondaryColor),
              ),
              const Spacer(),
              Text(
                '${_qnController.numOfCorrectAns * 10}/${_qnController.questions.length * 10}',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: KSecondaryColor),
              ),
              const Spacer(
                flex: 3,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
