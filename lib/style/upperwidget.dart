import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spaceapp/style/AssetsManager.dart';
import 'package:spaceapp/style/ColorManager.dart';
import 'package:spaceapp/style/Strings.dart';

class Upperwidget extends StatelessWidget {
  String bar="";
  String title="";
  Upperwidget({required this.bar,required this.title});

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
                    SizedBox(height: 15,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text(bar,
                          style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700,
                              color: ColorManager.secondary),),
                      ],
                    ),

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
        Positioned(top: 20,left: 10,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(minimumSize: Size(50, 50),backgroundColor: ColorManager.tertiary,
              shape: CircleBorder(),
            ),
            onPressed: (){
              Navigator.pop(context);
            },child: Icon(Icons.arrow_back_outlined,size: 24,color: ColorManager.secondary,), ),
        ),
      ],
    );
  }
}
