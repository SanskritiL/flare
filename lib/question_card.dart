import 'package:flutter/material.dart';
import 'question.dart';

class QuestionCard extends StatelessWidget {
  final Question question;
  QuestionCard({this.question});
  bool _correct=false;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      
        child: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 8, color: Colors.orange[400]))),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  question.text,
                
                  style: TextStyle(
                      fontFamily: 'Handlee',
                      fontSize: 26.0,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                ),
                
                SizedBox(
                  height: 77,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        question.suspectOne == question.correctID? _correct=true : _correct=false;
                            print("tapped left") ;                  
                      },
                    child: Container(
                      width: 120,
                      height: 120,
                      
                      decoration: BoxDecoration(
                        border: Border.all(width: 5, color: _correct? Colors.white:Colors.green),
                        borderRadius: BorderRadius.circular(50),
                          image: new DecorationImage(
                        image: AssetImage(question.suspectOne),
                        fit: BoxFit.fill,
                      )),
                      
                      
                    ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        // border: Border(
                        //   bottom: BorderSide(width: 1, color: Colors.black),
                        //   left: BorderSide(width: 1, color: Colors.black),
                        // ),
                          image: new DecorationImage(
                        image: AssetImage(question.suspectTwo),
                        fit: BoxFit.fill,
                        
                      )),
                    ),
                  ],
                )
              ],
            ),
          ),
        
      ),
    );
  }
}
