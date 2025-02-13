import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import 'package:spaceapp/style/ColorManager.dart';
import 'package:spaceapp/style/planetsdata.dart';
import 'package:spaceapp/style/upperhalf.dart';
import 'package:spaceapp/style/upperwidget.dart';

class PlanetDetails extends StatelessWidget {
  static const String routeName="PlanetDetails";
Planet? planet;
Flutter3DController controller=Flutter3DController();
   PlanetDetails({super.key,this.planet});

  @override
  Widget build(BuildContext context) {
    planet=ModalRoute.of(context)!.settings.arguments as Planet;
    return Scaffold(backgroundColor: ColorManager.primary,
      body:
      ListView(
        children: [ Column(

            children:[Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [



              ],
            ),
              Upperwidget(bar: planet!.name , title: planet!.title),
        
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: AspectRatio(aspectRatio: 1,
                  child: Flutter3DViewer(src: planet!.Planet3DModel,
                  progressBarColor: ColorManager.secondary,
                  activeGestureInterceptor: true,
                  enableTouch: true,
                  controller: controller,),
                ),
              ),
              SizedBox(height: 20),
              Text(planet!.title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
              SizedBox(height: 10),
              Text(planet!.about, style: TextStyle(fontSize: 16, color: Colors.white70)),
              SizedBox(height: 20),
              Text("Distance from Sun: ${planet!.distanceFromSun} km", style: TextStyle(fontSize: 16, color: Colors.white)),
              Text("Length of Day: ${planet!.lengthOfDay} hours", style: TextStyle(fontSize: 16, color: Colors.white)),
              Text("Orbital Period: ${planet!.orbitalPeriod} Earth years", style: TextStyle(fontSize: 16, color: Colors.white)),
              Text("Radius: ${planet!.radius} km", style: TextStyle(fontSize: 16, color: Colors.white)),
              Text("Mass: ${planet!.mass} ", style: TextStyle(fontSize: 16, color: Colors.white)),
              Text("Gravity: ${planet!.gravity} m/s²", style: TextStyle(fontSize: 16, color: Colors.white)),
              Text("surface Area: ${planet!.surfaceArea} ", style: TextStyle(fontSize: 16, color: Colors.white)),
              SizedBox(height: 30),
              // Center(
              //   child: ElevatedButton(
              //     onPressed: () => Navigator.pop(context),
              //     style: ElevatedButton.styleFrom(backgroundColor: ColorManager.tertiary),
              //     child: Text("Back", style: TextStyle(fontSize: 18, color: Colors.white)),
              //   ),
              // ),
            ],
          ),
        ),
        
        ],
        
        ),
    ]
      )
    );
  }
}
