import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spaceapp/style/AssetsManager.dart';
import 'package:spaceapp/style/ColorManager.dart';
import 'package:spaceapp/style/Strings.dart';

class upperhlaf extends StatelessWidget {
  String bar="";
  String title="";
   upperhlaf({required this.bar,required this.title});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Image.asset(AssetsManager.frame2),
        Positioned.fill(
          child : Container(decoration: BoxDecoration(
              gradient:LinearGradient(colors:[ColorManager.primary,
                ColorManager.primary.withOpacity(0.6),Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter)
          ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SafeArea(
                child: Column(
                  children: [
                    Text(bar,
                      style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700,
                          color: ColorManager.secondary),),

                      SizedBox(height: 50,),

                    Row(
                      children: [
                        Expanded(
                          child: Text(title,
                            style:TextStyle(fontSize: 32,
                                color: ColorManager.secondary,fontWeight: FontWeight.w500) ,),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
