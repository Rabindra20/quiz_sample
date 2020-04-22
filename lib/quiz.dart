import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Question(
//                           questions[0],
          questions[questionIndex]['questionText'],
        ),

//                        RaisedButton(
//                            child: Text('answer 1'),
//                            onPressed: answerQuestion,
//                        ),
//                        RaisedButton(
//                            child: Text('answer 2'),
//                            onPressed: () =>  print('Answer 2 choosen'),
//                        ),
//                        RaisedButton(
//                            child: Text('answer 3'),
//                            onPressed: (){
//                                print('Answer 3 chossen');
//                            },
//                        ),
//                    Answer(answerQuestion),
//                    Answer(answerQuestion),
//                    Answer(answerQuestion),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer){
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}