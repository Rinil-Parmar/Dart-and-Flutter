/*
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  num age = 20;
  // const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      appBar: AppBar(
        title: Text("Lab 8 - Tutorial 2"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/img.png'),
                minRadius: 60,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Name:",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "Rinil Parmar",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 35,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Age:",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "$age",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 35,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.blueAccent,
                ),
                Text(
                  "parmarrinila2002@mail.com",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            age--;
          });
        },
        child: Icon(
          Icons.minimize,
        ),
        backgroundColor: Colors.red,
      ),
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'quote.dart';
void main() => runApp(MaterialApp(
  home: EchoList(),
));

class EchoList extends StatefulWidget {
  const EchoList({Key? key}) : super(key: key);
  @override
  State<EchoList> createState() => _EchoListState();
}

class _EchoListState extends State<EchoList> {
  // List<String> quotes = [
  //   'The truth is realy pure and never simple',
  //   'I see humans but no humanity',
  //   'The time is always right to do what is right'
  // ];

  List<Quote> quotes = [
    Quote("This is a quote 1", "Author 1"),
    Quote("This is a quote 2", "Author 2"),
    Quote("This is a quote 3", "Author 1"),
  ];

  Widget QuoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(20, 30, 40, 10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(quote.text,
              style:TextStyle(
                fontSize: 20,
                color: Colors.blueGrey[600],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(quote.author,
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueGrey[600],
              ),)
          ],
        ),
      ),
    );
  }
