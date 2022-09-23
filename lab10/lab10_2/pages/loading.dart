import 'package:flutter/material.dart';
import 'package:lab10_tutorial2/services/word_time.dart';

class Loading extends StatefulWidget {
  // const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String? time = 'Loading...';
  void setWorldTime() async{
    WordTime timeinstance = WordTime(location: 'kolkata',flag: 'india.png',url: 'Asia/Kolkata');
    await timeinstance.getTime();
    setState(() {
      time = timeinstance.time;
    });
  }
  @override
  void initState(){
    super.initState();
    setWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.all(60.0),
          child: Text(time.toString()),
        )
    );
  }
}
