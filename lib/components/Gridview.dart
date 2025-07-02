import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/last_page.dart';

class GridviewContainer extends StatelessWidget {
  const GridviewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    List img = ["Americano","Cappuccino" ,"Cold_Coffee", "Hot_Coffee"];
    return GridView.count(
      physics:  NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
     childAspectRatio: 1.5,

     shrinkWrap: true,
      crossAxisSpacing: 2,

      children: [
        for (int i = 0; i < img.length; i++)
          Container(

            padding: EdgeInsets.symmetric(horizontal: 4,
            vertical: 4),
            margin: EdgeInsets.symmetric(horizontal: 4,vertical: 4),

            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(color: Colors.red, spreadRadius: 0.5)],
            ),
            child: Column(
              children: [Container(
                decoration: BoxDecoration(

                ),

                width: 50,

                    height: 50,

                child: Image.asset("images/${img[i]}.jpg",fit: BoxFit.contain,),

                ),

                SizedBox(height: 8,),
                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 110.0),
                      child: Text(img[i],style: TextStyle(color: Colors.white,fontSize: 12),),
                    ),
                    SizedBox(height: 4,),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text("Best Coffee ",style: TextStyle(color: Colors.red,fontSize: 8),),
                    ),
                    SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$30",style: TextStyle(color: Colors.white,fontSize: 10),),
                    Container(

                        decoration:BoxDecoration(color: Colors.deepOrange,shape: BoxShape.circle),

    child: IconButton( onPressed:()=>Navigator.push(context,MaterialPageRoute(builder: (context) => LastPage( img:img[i],),)), icon: Icon(Icons.add,size: 14,color: Colors.white,)))
                  ],
                ),
              ],
            ),

            ],
            ),
          ),
      ],

    );
  }
}
