import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  //const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row and column layout'),
        backgroundColor: Colors.red[600],
        centerTitle: true,
      ),

      body:
          // 1st
          // Padding(
          //     padding: EdgeInsets.all(50), child: Text('Hello only padding')),

      // 2nd
      //  Row(
      //     children: [
      //       Text('Hello Row '),
      //       FlatButton(onPressed: (){},
      //           color: Colors.purple,
      //           child: Text('Press me')),
      //       Container(
      //         color: Colors.cyanAccent,
      //         padding: EdgeInsets.all(30.0),
      //         child: Text('Inside container'),
      //       ),
      //       Text('Helllo'),
      //     ],
      //   )


      // 3rd
      Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisAlignment: MainAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // crossAxisAlignment: CrossAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.center,
       // crossAxisAlignment: CrossAxisAlignment.baseline,
        children: [
          // Text('Hello Row '),
          //       FlatButton(onPressed: (){},
          //           color: Colors.purple,
          //           child: Text('Press me')),
          Container(
            color: Colors.deepOrange[800],
            padding: EdgeInsets.all(30.0),
            child: Text('Inside container 1'),
          ),
          Container(
            color: Colors.limeAccent,
            padding: EdgeInsets.all(50.0),
            child: Text('Inside container 2'),
          ),
          Container(
            color: Colors.green[800],
            padding: EdgeInsets.all(70),
            child: Text('Inside container 3'),
          ),
      
          // Container(
          //   color: Colors.blueAccent,
          //   padding: EdgeInsets.all(70),
          //   margin: EdgeInsets.all(0),
          //   child: Text('Inside container 4'),
          // ),
          // Container(
          //   color: Colors.black,
          //   padding: EdgeInsets.all(70),
          //   margin: EdgeInsets.all(0),
          //   child: Text('Inside container 3',style:TextStyle(color: Colors.white)),
      
          // ),
      
        ],
      
      ),
      

/*
      // 4)
      // Column (
      // mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.start,
      //
      // children: [
      // Row(
      // children: [
      // Text('HELLLO'),
      //
      // Text(' MY NAME IS??')
      // ],
      // ),
      // Container(
      // color: Colors.purple[800],
      // padding: EdgeInsets.all(30.0),
      // child: Text('Inside container 1'),
      // ),
      // Container(
      // color: Colors.limeAccent,
      // padding: EdgeInsets.all(50.0),
      // child: Text('Inside container 2'),
      // ),
      // Container(
      // color: Colors.green[800],
      // padding: EdgeInsets.all(70),
      // child: Text('Inside container 3'),
      // ),
      //
      // ],
      // ),
      */

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
