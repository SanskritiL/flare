import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'question.dart';
import 'question_card.dart';

void main() => runApp(MaterialApp(home: MyHome()));

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int counter = 0;
  List<Question> questions = [
    Question(
        text: 'Who is more likely to not wash dirty sink for days?',
        suspectOne: 'assets/ayush.jpg',
        suspectTwo: 'assets/yunik.png',
        correctID: 'assets/yunik.png'),
    Question(
        text: 'Who is more likely to throw up in their Uber?',
        suspectOne: 'assets/prativa.jpg',
        suspectTwo: 'assets/anjila.jpg',
        correctID: 'assets/anjila.jpg'),
    Question(
        text: 'Who is more likely to date their best friend\'s Ex?',
        suspectOne: 'assets/aishwant.png',
        suspectTwo: 'assets/anip.jpg',
        correctID: 'assets/aishwant.png'),
    Question(
        text: 'Who is more likely to hide brownies from their friends? ',
        suspectOne: 'assets/anip.jpg',
        suspectTwo: 'assets/ashik.jpg',
        correctID: 'assets/ashik.jpg'),
    Question(
        text:
            'Who is more likely to let out fart quietly and blame on someone else? ',
        suspectOne: 'assets/aishwant.png',
        suspectTwo: 'assets/ronish.jpg',
        correctID: 'assets/ronish.jpg'),
    Question(
        text:
            'Who is more likely to be mad at someone else for eating their food?',
        suspectOne: 'assets/ashik.jpg',
        suspectTwo: 'assets/prativa.jpg',
        correctID: 'assets/ashik.jpg'),
    Question(
        text: 'Who is more likely to bring a girl home at 2am? ',
        suspectOne: 'assets/anip.jpg',
        suspectTwo: 'assets/ayush.jpg',
        correctID: 'assets/anip.jpg'),
    Question(
        text:
            'Who is more likely to miss their wife\'s delivery because of Voice of Nepal finale? ',
        suspectOne: 'assets/sushil.png',
        suspectTwo: 'assets/ashik.jpg',
        correctID: 'assets/sushil.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit FounTEEN',
            style: TextStyle(
                fontFamily: 'Handlee',
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        backgroundColor: Colors.orange[400],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.orange[400],
        child: Container(height: 50),
      ),
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.orange[400],
        onPressed: () {
          setState(() {
            counter < (questions.length - 1) ? counter += 1 : counter = 0;
          });
        },
        child: Text(
          'Next',
          style: TextStyle(
            fontFamily: 'Handlee',
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Column(
          children: <Widget>[
            Container(
              width: 400,
              height: 200,
              child: FlareActor("assets/home.flr", animation: 'home'),
            ),
            QuestionCard(question: questions[counter])
          ],
        ),
      ),
    );
  }
}
