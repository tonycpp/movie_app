import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_app/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      color: Colors.black,
      title: 'Movies',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => HomePage(),
      },

      /*
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Test'),
          elevation: 0,
        ),
        body: Center(
          child: Container(
            child: Text(
              'Test',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),

      */
    );
  }
}

final theme = ThemeData(
  fontFamily: 'Poppins',
);
