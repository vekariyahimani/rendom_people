import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rendom_people/screen/random/provider/random_provider.dart';
import 'package:rendom_people/screen/random/view/random_screen.dart';
import 'package:rendom_people/screen/random/view/splash_screen.dart';



void main()
{
  runApp(
    ChangeNotifierProvider(
      create: (context) => RandomProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) =>SplshScreen(),
          '2':(context) => RandomScreen(),
        }
      ),
    )
  );
}