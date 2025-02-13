import 'package:flutter/material.dart';
import 'package:spaceapp/planetdetails.dart';

import 'explore.dart';
import 'homescreen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {Explore.routeName:(context)=>Explore(),
      HomeScreen.routeName:(context)=>HomeScreen(),
        PlanetDetails.routeName:(context)=>PlanetDetails()
      },
      initialRoute:Explore.routeName,
    );
  }
}


