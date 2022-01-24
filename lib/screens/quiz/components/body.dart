import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controllers/question_controllers.dart';
import 'package:quiz_app/screens/quiz/components/question_card.dart';

import 'progress_bar.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Stack(children: [
      Positioned(
        bottom: 0,
        top: 0,
        child: Image.asset(
          "assets/images/photo.png",
        ),
      ),
      SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProgressBar(),
            const SizedBox(height: KDefaultPadding),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: KDefaultPadding / 4),
              child: Obx(() => Text.rich(
                    TextSpan(
                        text:
                            "Question ${_questionController.questionNumber.value}",
                        style: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(color: KSecondaryColor),
                        children: [
                          TextSpan(
                            text: "/${_questionController.questions.length}",
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: KSecondaryColor),
                          )
                        ]),
                  )),
            ),
            const Divider(
              thickness: 1.5,
            ),
            const SizedBox(height: KDefaultPadding),
            Expanded(
              child: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: _questionController.updateQnNum,
                controller: _questionController.pageController,
                itemCount: _questionController.questions.length,
                itemBuilder: (context, index) => QuestionCard(
                  question: _questionController.questions[index],
                ),
              ),
            ),
          ],
        ),
      ))
    ]);
  }
}
