//lab9_tutorial2
import 'package:flutter/material.dart';
import 'package:flutter_lab_works/pages/home.dart';
import 'package:flutter_lab_works/pages/choose_location.dart';
import 'package:flutter_lab_works/pages/loading.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      },
    ));
