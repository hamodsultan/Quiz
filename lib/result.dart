import 'package:flutter/material.dart';

import 'main.dart';

class Result extends StatelessWidget {
  final Function q;
  final int resultScore;

  Result(this.q, this.resultScore);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 210) {
      resultText = "أنت رائع ...ممتار";
    } else if (resultScore >= 180) {
      resultText = " أنت رائع...جيد جداً";
    } else {
      resultText = "أنت رائع ...جيد";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "درجتك  $resultScore",
            style:
                TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: b),
            textAlign: TextAlign.center,
          ),
          Text(
            resultPhrase,
            style:
                TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: b),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              "أضغظ هنا لتشغيل التطبيق من جديد",
              style: TextStyle(fontSize: 30, color: Colors.blue),
            ),
            onPressed: q,
          ),
        ],
      ),
    );
  }
}
