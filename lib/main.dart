import 'package:flutter/material.dart';
import 'question.dart';

void main() => runApp(MaterialApp(home: MyHome()));

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<Question> questions = [
    Question(
        text: 'Who is more likely to die from diarrhoea',
        suspectOne: 1,
        suspectTwo: 2,
        correctID: 1),
    Question(
        text: 'Who is more likely to not wash a dirty sink for a week',
        suspectOne: 3,
        suspectTwo: 4,
        correctID: 3),
    Question(
        text: 'Who is more likely to faint ',
        suspectOne: 5,
        suspectTwo: 6,
        correctID: 4),
  ];

  Widget QuestionTemplate(question) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ), 
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 3.0, color: Colors.orange[400])
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                question.text,
                style: TextStyle(
                  fontFamily: 'Handlee',
                  fontSize: 20.0
                ),
              ),
              SizedBox(height: 6.0,),
              
            ],
          ),
        ),
      ),   
    );
  }

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
        onPressed: () {},
        child: Text(
          'Next',
          style: TextStyle(
              fontFamily: 'Handlee',
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15),
        ),
        backgroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Column(
            children: questions.map((question) {
          return QuestionTemplate(question);
        }).toList()),
      ),
    );
  }
}
