import 'package:flutter/material.dart';
import 'question.dart';

class QuestionCard extends StatefulWidget {
  final Question question;
  QuestionCard({this.question});
  int state = 0;
  int leftcode = 0;
  int rightcode = 0;
  @override
  _QuestionCardState createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
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
                widget.question.text,
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
                      setState(() {
                        widget.state = 1;

                        //       widget._colorcode=
                        //  widget.question.suspectOne==widget.question.correctID? 1:2;
                        widget.leftcode = widget.question.suspectOne ==
                                widget.question.correctID
                            ? 1
                            : 2;
                        widget.rightcode = widget.leftcode == 1 ? 2 : 1;
                      });
                      print("tapped left");
                      //print(widget._colorcode);
                    },
                    child: Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 8,
                              color: widget.state == 0
                                  ? Colors.white
                                  : (widget.leftcode == 1
                                      ? Colors.green
                                      : Colors.red)),
                          borderRadius: BorderRadius.circular(50),
                          image: new DecorationImage(
                            image: AssetImage(widget.question.suspectOne),
                            fit: BoxFit.fill,
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      print("tapped right");
                      setState(() {
                        widget.state = 1;
                        widget.rightcode = widget.question.suspectTwo ==
                                widget.question.correctID
                            ? 1
                            : 2;
                        widget.leftcode = widget.rightcode == 1 ? 2 : 1;
                        //   widget._colorcode=
                        //  widget.question.suspectTwo==widget.question.correctID? 1:2;
                      });
                    },
                    child: Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 8,
                              color: widget.state == 0
                                  ? Colors.white
                                  : (widget.rightcode == 1
                                      ? Colors.green
                                      : Colors.red)),
                          //border:
                          //Border.all(width: 8, color: widget._colorcode==0?Colors.white: (widget._colorcode==1? Colors.green:Colors.red)),
                          //border: Border.all(width: 5, color: Colors.orange[400]),

                          borderRadius: BorderRadius.circular(50),
                          // border: Border(
                          //   bottom: BorderSide(width: 1, color: Colors.black),
                          //   left: BorderSide(width: 1, color: Colors.black),
                          // ),
                          image: new DecorationImage(
                            image: AssetImage(widget.question.suspectTwo),
                            fit: BoxFit.fill,
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
