import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';


//void main() {
//  runApp(MyApp());
//}
void main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
//    throw UnimplementedError();
    return MyAppState();
  }
}
class MyAppState extends State<MyApp>{
  final questions = const [
    {
      'questionText':'what\'s is ur favorite color?',
      'answers':[
        {'text':'Black','score':10},
        {'text':'red','score':3},
        {'text':'white','score':3},
        {'text':'Green','score':1},],
    },
    {
      'questionText':' How many letters are there in the English alphabet?',
      'answers':[
        {'text':'26','score':10},
        {'text':'20','score':4},
        {'text':'27','score':2},
        {'text':'21','score':1},],
    },
    {
      'questionText':'Which is the tallest mountain in the world?',
      'answers':[
        {'text':'Mount Everest','score':10},
        {'text':'Kangchenjunga','score':1},
        {'text':'	Lhotse','score':2},
        {'text':'Manaslu','score':1},],
    },
  ];
  var questionIndex = 0;
  var totalScore = 0;


  void resetQuiz(){
    setState(() {
      questionIndex =0;
      totalScore=0;
    });

  }
  void answerQuestion(int score){
//      var aBool= true;
//      aBool = false;
    totalScore +=score;//totalScore = totalScore+score;
    if (questionIndex < questions.length) {
      print('we have more questions');
    }else{
      print('no more question');
    }
    setState(() {
      questionIndex = questionIndex +1;
    });

//        print('Answer choosen');
    print(questionIndex);
  }
  @override
  Widget build(BuildContext context){
//        const questions = [
//          {
//            'questionText':'what\'s is ur favorite color?',
//              'answers':['Black','red','white','black'],
//          },
//      {
//      'questionText':'what\'s is ur favorite animal','answers':[
//      'rabbit','cat','dog','lion'],
//      },
//      {
//      'questionText':'what\'s is ur favorite subject','answers':[
//      'math','computer','science','english'],
//      },
//      ];
//        questions = [];//const
    return MaterialApp(
      home :Scaffold(
        appBar: AppBar(title: Text('My first app'),),
        body: questionIndex < questions.length ? Quiz
          (answerQuestion: answerQuestion,
          questionIndex: questionIndex,
          questions:questions,)
//                Column(
//                    children: [
//                        Question(
////                           questions[0],
//                        questions[questionIndex]['questionText'],
//                        ),
//
////                        RaisedButton(
////                            child: Text('answer 1'),
////                            onPressed: answerQuestion,
////                        ),
////                        RaisedButton(
////                            child: Text('answer 2'),
////                            onPressed: () =>  print('Answer 2 choosen'),
////                        ),
////                        RaisedButton(
////                            child: Text('answer 3'),
////                            onPressed: (){
////                                print('Answer 3 chossen');
////                            },
////                        ),
////                    Answer(answerQuestion),
////                    Answer(answerQuestion),
////                    Answer(answerQuestion),
//                      ...(questions[questionIndex]['answers'] as List<String>).map((answer){
//                        return Answer(answerQuestion, answer);
//                      }).toList()
//                    ],
//                )
//                    : Center(child: Text('You did it!'),//result.dart
            :Result(totalScore, resetQuiz),
      ),
    );
  }
}