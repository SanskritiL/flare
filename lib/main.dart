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
        suspectTwo: 'assets/ronish.jpg',
        correctID: 'assets/prativa.jpg'),
    Question(
        text: 'Who is more likely to hide brownies from their friends ',
        suspectOne: 'assets/anip.jpg',
        suspectTwo: 'assets/ashik.jpg',
        correctID: 'assets/ashik.jpg'),
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
            counter < 2 ? counter += 1 : counter = 0;
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
          children: <Widget>[QuestionCard(question:questions[counter])
],
        ),
      ),
    );
  }
}
