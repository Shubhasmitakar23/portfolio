import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

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
          ),
            Text('Shubhasmita Kar', style: TextStyle(fontSize: 20),),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: Colors.black,
              height: 2,
              thickness: 1,
              indent: 300,
              endIndent: 300,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () async {
                      final Uri url = Uri.parse('https://shubhasmitakar23.github.io/');
                      if (await canLaunchUrl(url)){
                        await launch('https://shubhasmitakar23.github.io/');
                      }
                      else{
                        throw 'Could not launch.';
                      }
                    },
                    icon: FaIcon(FontAwesomeIcons.globe,size: 30,)),
                IconButton(
                    onPressed: () async {
                      final Uri url = Uri.parse('https://github.com/Shubhasmitakar23');
                      if (await canLaunchUrl(url)){
                        await launch('https://github.com/Shubhasmitakar23');
                      }
                      else{
                        throw 'Could not launch.';
                      }
                    },
                    icon: FaIcon(FontAwesomeIcons.github,size: 30,)),
                IconButton(
                    onPressed: () async {
                      final Uri url = Uri.parse('https://www.linkedin.com/in/shubhasmita-kar-300965228/');
                      if (await canLaunchUrl(url)){
                        await launch('https://www.linkedin.com/in/shubhasmita-kar-300965228/');
                      }
                      else{
                        throw 'Could not launch.';
                      }
                    },
                    icon: FaIcon(FontAwesomeIcons.linkedin,size: 30,)),

              ],
            )
        ],),
      ),
    ));
  }
}
