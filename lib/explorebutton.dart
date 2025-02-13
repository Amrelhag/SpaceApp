import 'package:flutter/material.dart';
import 'package:spaceapp/style/ColorManager.dart';
import 'package:spaceapp/style/planetsdata.dart';


class ExploreButton extends StatelessWidget {
  String explore="";
  String navigator="";

   ExploreButton({required this.explore,required this.navigator,});

  @override
  Widget build(BuildContext context) {
    return

      Container(margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: ElevatedButton(child:
 Padding(
   padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
   child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
         Text(explore,style: TextStyle(fontSize: 32,color: ColorManager.secondary),),
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
            Navigator.of(context).pushNamed(("$navigator"),);
          },

    ),
      );
  }
}
