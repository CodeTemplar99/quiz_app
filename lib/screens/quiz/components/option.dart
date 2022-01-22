import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

class Option extends StatelessWidget {
  const Option({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: KDefaultPadding),
      padding: const EdgeInsets.all(KDefaultPadding),
      decoration: BoxDecoration(
        border: Border.all(color: KGrayColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "1. test",
            style: TextStyle(color: KGrayColor, fontSize: 16),
          ),
          Container(
            height: 26,
            width: 26,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
          )
        ],
      ),
    );
  }
}
