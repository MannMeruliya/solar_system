import 'package:flutter/material.dart';
import 'package:solar_system/screen/detailscreen.dart';
import 'package:solar_system/screen/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
     routes: {
        '/':(context) => homepage(),
       'homescreen':(context) => homescreen(),
       'detailscreen':(context) => detailscreen()
     },
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2f2f2f),
        title: Text("Solar System",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            height: 770,
            width: double.infinity,
            color: Colors.black,
            child: Image.asset(
              "assets/5.jpg",
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment(0,0.7),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('homescreen');
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xff2f2f2f),
              ),
              child: Text("Get Start",style: TextStyle(color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}
