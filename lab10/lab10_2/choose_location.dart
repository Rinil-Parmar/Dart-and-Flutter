import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  // const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: Text("Choose Location"),
        centerTitle: true,
        elevation: 0,
      ),
      
    );
  }
}
