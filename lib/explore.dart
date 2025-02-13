import 'package:flutter/material.dart';
import 'package:spaceapp/explorebutton.dart';
import 'package:spaceapp/style/AssetsManager.dart';
import 'package:spaceapp/style/ColorManager.dart';

class Explore extends StatelessWidget {
  static const String routeName="Explore";
   Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xff0E0E0E),
      body: Stack(
        children: [Image.asset(AssetsManager.explore,fit: BoxFit.fill,),

              Container(
                child:Align (alignment: Alignment.centerLeft,
                    child: Text(" Explore \n The \n Universe",
                  style: TextStyle(fontSize: 72,color:ColorManager.secondary ,
                      fontWeight: FontWeight.w900),)),
              ),


          Container(
            child: Align (alignment: Alignment.bottomCenter,
              child: ExploreButton(explore: "Explore",navigator: "HomeScreen", )
            )
          )
        ],
      )
    );
  }
}
