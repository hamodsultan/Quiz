import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

Color w = Colors.white;
Color b = Colors.black;

class _MyAppState extends State<MyApp> {
  bool isSwitched = false;
  int _totalScore = 0;
  int _questionIndex = 0;
  int num0 = 0,
      num1 = 0,
      num2 = 0,
      num3 = 0,
      num4 = 0,
      num5 = 0,
      num6 = 0,
      num7 = 0;
  void _restQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      num0 = 0;
      num1 = 0;
      num2 = 0;
    });
  }

  void answerQuestion(score) {
    if (_questionIndex == 0)
      num0 = score;
    else if (_questionIndex == 1)
      num1 = score;
    else if (_questionIndex == 2)
      num2 = score;
    else if (_questionIndex == 3)
      num3 = score;
    else if (_questionIndex == 4)
      num4 = score;
    else if (_questionIndex == 5)
      num5 = score;
    else if (_questionIndex == 6)
      num6 = score;
    else if (_questionIndex == 7) num7 = score;

    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
    print("_questionIndex =$_questionIndex");
    print("num0=$num0");
    print("num1=$num1");
    print("num2=$num2");
    print("num2=$num3");
    print("num2=$num4");
    print("num2=$num5");
    print("num2=$num6");
    print("num2=$num7");
    print("_totalScore=$_totalScore");
  }

  final List<Map<String, Object>> _question = [
    {
      'questionText': 'ماهو لونك المفضل؟',
      'answers': [
        {'text': 'أسود', 'score': 10},
        {'text': 'أخضر', 'score': 20},
        {'text': 'أزرق', 'score': 30},
        {'text': 'أبيض', 'score': 40},
      ]
    },
    {
      'questionText': 'ماهو حيوانك المفضل؟',
      'answers': [
        {'text': 'أرنب', 'score': 10},
        {'text': 'نمر', 'score': 20},
        {'text': 'فيل', 'score': 30},
        {'text': 'أسود', 'score': 40},
      ]
    },
    {
      'questionText': 'ماهي دولتك المفضل؟',
      'answers': [
        {'text': 'قطر', 'score': 10},
        {'text': 'مصر', 'score': 20},
        {'text': 'السعودية', 'score': 30},
        {'text': 'اليمن', 'score': 40},
      ]
    },
    {
      'questionText': 'ماهو الفصل المفضل لك في السنة؟',
      'answers': [
        {'text': 'الخريف', 'score': 10},
        {'text': 'الربيع', 'score': 20},
        {'text': 'الصيف', 'score': 30},
        {'text': 'الشتاء', 'score': 40},
      ]
    },
    {
      'questionText': 'ماهي رياضتك المفضلة؟',
      'answers': [
        {'text': ' الرياضة الجوية', 'score': 10},
        {'text': ' رياضة التزلج', 'score': 20},
        {'text': 'الرياضة القتالية ', 'score': 30},
        {'text': 'رياضة الجليد', 'score': 40},
      ]
    },
    {
      'questionText': 'ماهو شرابك المفضل؟',
      'answers': [
        {'text': 'الزنجبيل', 'score': 10},
        {'text': 'الشاي الأخضر', 'score': 20},
        {'text': 'البرتقال والليمون', 'score': 30},
        {'text': 'النبيذ', 'score': 40},
      ]
    },
    {
      'questionText': 'ماهو لاعبك المفضل في العالم؟',
      'answers': [
        {'text': 'ميسي', 'score': 10},
        {'text': 'محمد صلاح', 'score': 20},
        {'text': 'كريستيانو', 'score': 30},
        {'text': 'ساديو ماني', 'score': 40},
      ]
    },
    {
      'questionText': 'ماهي محافظتك المفضلة في اليمن',
      'answers': [
        {'text': 'تعز', 'score': 10},
        {'text': 'عدن', 'score': 20},
        {'text': 'صنعاء', 'score': 30},
        {'text': 'حضرموت', 'score': 40},
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Center(
            child: Text(
              "تطبيق مسابقة",
              style: TextStyle(
                color: w,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: [
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                  print(isSwitched);
                  if (isSwitched == true) {
                    b = Colors.white;
                    w = Colors.black;
                  }
                  if (isSwitched == false) {
                    b = Colors.black;
                    w = Colors.white;
                  }
                });
              },
              activeColor: Colors.white,
              inactiveThumbColor: Colors.red,
              inactiveTrackColor: Colors.yellow,
            ),
          ],
        ),
        body: Container(
          color: w,
          child: _questionIndex < _question.length
              ? Quiz(_question, _questionIndex, answerQuestion)
              : Result(_restQuiz, _totalScore),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow,
          child: Icon(
            Icons.arrow_back,
            color: w,
            size: 40,
          ),
          onPressed: () {
            if (_questionIndex == 1) _totalScore -= num0;
            if (_questionIndex == 2) _totalScore -= num1;
            if (_questionIndex == 3) _totalScore -= num2;
            if (_questionIndex == 4) _totalScore -= num3;
            if (_questionIndex == 5) _totalScore -= num4;
            if (_questionIndex == 6) _totalScore -= num5;
            if (_questionIndex == 7) _totalScore -= num6;
            if (_questionIndex == 8) _totalScore -= num7;
            setState(() {
              if (_questionIndex > 0) {
                _questionIndex--;
              }
            });
            print("_questionIndex =$_questionIndex");
            print("num0=$num0");
            print("num1=$num1");
            print("num2=$num2");
            print("num2=$num3");
            print("num2=$num4");
            print("num2=$num5");
            print("num2=$num6");
            print("num2=$num7");

            print("_totalScore=$_totalScore");
          },
        ),
      ),
    );
  }
}
