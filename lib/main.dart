import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Colors.green, Colors.blue])
      ),
      child: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
          CircleAvatar(
            radius: 70,
            backgroundImage:  NetworkImage('https://media-exp1.licdn.com/dms/image/C4D03AQHQhgBsd-r85Q/profile-displayphoto-shrink_200_200/0/1653887873548?e=1665619200&v=beta&t=8pU6L4--XQ8qu6ZrgKThD_xpBOnwnAOM7T6AtHLM7B4'),
          )
        ],),
      ),
    ));
  }
}
