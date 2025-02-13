

import 'package:flutter/material.dart';
import 'package:spaceapp/explorebutton.dart';
import 'package:spaceapp/planetdetails.dart';
import 'package:spaceapp/style/AssetsManager.dart';
import 'package:spaceapp/style/ColorManager.dart';
import 'package:spaceapp/style/Strings.dart';
import 'package:spaceapp/style/planetsdata.dart';
import 'package:spaceapp/style/upperhalf.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName="HomeScreen";

   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  List<String> PlanetsImages=[ AssetsManager.sun, AssetsManager.mercury,
    AssetsManager.venus, AssetsManager.earth,
    AssetsManager.mars,AssetsManager.jupiter,
    AssetsManager.saturn, AssetsManager.uranus, AssetsManager.neptune,];


  PageController planetController=PageController(initialPage: 0);
  int index=0;

void initState(){
 super.initState();
 planetController.addListener(_listener);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: ColorManager.primary,
      body:Column(
        children: [
          upperhlaf(bar: Strings.explore,title: Strings.question,),
          Expanded(
            child: Container(
              child: PageView.builder(
controller: planetController,
                itemCount: PlanetsImages.length,
                itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(PlanetsImages[index]),
                );
                },

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 25),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(style: ElevatedButton.styleFrom(
                  minimumSize: Size(50, 60),
                  backgroundColor: ColorManager.tertiary,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)
                    ),
                  ),
                ),
                    onPressed: (){
                  if(planetController.page!.toInt()==0){
                    return;
                  }
                  planetController.animateToPage(planetController.page!.toInt() -1,
                      duration:Duration(milliseconds: 300),
                      curve: Curves.easeIn);
                    },
                    child:Icon(Icons.arrow_back_outlined,color: ColorManager.secondary,size: 24,) ),

                Text(Planet.planets[index].name,
                  style: TextStyle(color: ColorManager.secondary ,fontSize: 24,
                fontWeight: FontWeight.w700
                ),),


                ElevatedButton(style: ElevatedButton.styleFrom(
                  minimumSize: Size(50, 60),
                  backgroundColor: ColorManager.tertiary,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)
                    ),
                  ),
                ),
                    onPressed: (){

                      planetController.animateToPage(planetController.page!.toInt() +1,
                          duration:Duration(milliseconds: 300),
                          curve: Curves.easeIn);
                    },
                    child:Icon(Icons.arrow_forward_outlined,color: ColorManager.secondary,size: 24,) ),


              ],
            ),
          ),
          // ExploreButton(explore: "${Strings.explore}${Planet.planets[index].name}",
          //   navigator:"PlanetDetails", PLanetIndex:"${Planet.planets[index]}" ,)

          Container(margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
            child: ElevatedButton(child:
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${Strings.explore} ${Planet.planets[index].name}",
                    style: TextStyle(fontSize: 32,color: ColorManager.secondary),),
                  Icon(Icons.arrow_forward_outlined,size: 36,color: ColorManager.secondary,),
                ],
              ),
            ),

              style: ElevatedButton.styleFrom(
                minimumSize: Size(380, 70),
                backgroundColor: ColorManager.tertiary,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(48)
                  ),
                ),
              ),

              onPressed: (){
                Navigator.pushNamed(context, PlanetDetails.routeName,arguments:Planet.planets[index] );
              },

            ),
          )
        ],
      )
    );
  }

  void _listener(){
if(planetController.page! %1 ==0){
  setState(() {
    index=planetController.page!.toInt();
  });
}
  }
}
