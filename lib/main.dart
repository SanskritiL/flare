import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyHome(),));

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Unit FounTEEN', style: TextStyle(fontFamily: 'Handlee', color: Colors.black, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.orange[400],       
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: Colors.orange[400],
          child: Container(
            height: 50
          ),
        ),
         floatingActionButton: FloatingActionButton(
           splashColor: Colors.orange[400],
           onPressed: () => print("hello"),
           child: Text('Next', style: TextStyle(fontFamily: 'Handlee', color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),), backgroundColor: Colors.white, 
         ),
         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
           
  );

  }
}