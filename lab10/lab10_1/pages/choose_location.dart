import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  // const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {


  // num count = 0;

  /*
  void getData(){
    Future.delayed(Duration(seconds: 5),(){
      print("5 seconds completed");
    });
    Future.delayed(Duration(seconds: 2),(){
      print("This should be called before above method");
    });
  }
   */



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
      body: Padding(
        padding: const EdgeInsets.all(8.0),

        /*
        child: ElevatedButton(
          onPressed: (){
            setState(() {
              count++;
            });
          },
          child: Text("Count is : ${count}"),
        ),
       */
      ),
    );
  }
}
