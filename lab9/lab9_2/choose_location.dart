import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  // const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        title: Text("Choose Location"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text(
        "Choose Location Screen",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}
