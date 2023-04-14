import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rendom_people/screen/random/view/random_screen.dart';

class SplshScreen extends StatefulWidget {
  const SplshScreen({Key? key}) : super(key: key);

  @override
  State<SplshScreen> createState() => _SplshScreenState();
}

class _SplshScreenState extends State<SplshScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RandomScreen(),) );
    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            height: 790,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [(Colors.blue.shade900), (Colors.lightBlue.shade900)])),
            child: Column(
              children: [
                SizedBox(height: 320,),
                Center(
                  child: Container(
                    height: 150,
                    width: 150,
                    child: Image.asset(
                      "assets/image/0.png",
                      fit: BoxFit.cover,

                    ),
                  ),
                ),
                SizedBox(height: 250,),
                Text("By Boi Placement",style: TextStyle(fontSize: 15),)

              ],
            ),
          ),
        ));
  }
}
