import 'package:flutter/material.dart';

class detailscreen extends StatefulWidget {
  const detailscreen({super.key});

  @override
  State<detailscreen> createState() => _detailscreenState();
}

class _detailscreenState extends State<detailscreen> {
  @override
  Widget build(BuildContext context) {
    dynamic data = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Detail of Plantes",style:TextStyle(color: Colors.white)),
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset("assets/2.jpg",fit: BoxFit.fill,),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Image(
                      height: 400,
                      image: AssetImage("${data.image}"),
                    ),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: -2,
                          blurRadius: 10,
                          blurStyle: BlurStyle.outer,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 100,
                    width: double.infinity,
                    child: Column(
                      children: [
                        // Text(
                        //   "${data.charactername}",
                        //   style: TextStyle(
                        //     fontSize: 40,
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // ),
                        Text(
                          "${data.name}",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: -2,
                          blurRadius: 10,
                          blurStyle: BlurStyle.outer,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Container(
                  //   child: Text(
                  //     "${data.info}",
                  //     style: TextStyle(
                  //         fontSize: 22,
                  //         color: Colors.black,
                  //         fontWeight: FontWeight.w500),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}