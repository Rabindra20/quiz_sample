
import 'package:flutter/material.dart';


class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase{
    var result ='you did it!';
    String resultText;
    if (resultScore >=10)
    {
      resultText='You are awsome and innoncent';
    }else if(resultScore >= 20){
      resultText='Pretty likable!';
    }else if(resultScore >=25){
      resultText='You are strange?';
    }else {
      resultText='You are bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return
      Center(
        child:
        Column(
          children: <Widget>[
            Text(
              resultPhrase,
//            'You did it!',
              style: TextStyle
                (fontSize: 36,fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            FlatButton(
              child: Text('Restart Quize'
              ),

              textColor: Colors.red,
              onPressed: resetHandler,

            ),

          ],
        ),
      );
  }
}
