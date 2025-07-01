import 'package:flutter/material.dart';

class LastPage extends StatefulWidget {
  String img;
  LastPage({super.key,required this.img});

  @override
  State<LastPage> createState() => _LastPageState();
}

class _LastPageState extends State<LastPage> {
  bool isSelected = false;
  void callBack(){
    setState(() {
      isSelected= !isSelected;
    });
  }
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Colors.black54,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Padding(
                padding: const EdgeInsets.only(left: 8.0,top: 3.0),
                child: IconButton(highlightColor: Colors.blue,onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back_ios_new)),
              ),

              SizedBox(height: 10),
              Center(child: Image.asset("images/${widget.img}.jpg", width: 800, height:150)),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Center(
                  child: Text(
                    "Best Coffee",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ),
              ),
              SizedBox(height: 6),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Center(child: Text(widget.img,style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.w900),)),
              ),
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Container(
                      width: 90,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(splashRadius: 2,color: Colors.blue,onPressed: (){},icon: Icon(Icons.remove,color: Colors.white,)),
                          Text("2",style: TextStyle(color: Colors.white),),
                          IconButton(color: Colors.blue,onPressed: (){},icon: Icon(Icons.add,color: Colors.white,)),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Text("\$33.0",style: TextStyle(color: Colors.black,fontSize: 16),),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                child: Text("Coffee is a brewed drink made from roasted coffee beans It's one of the most popular beverages worldwide Known for its bold flavor and rich a aroma Coffee provides an energy boost thanks to caffeineEnjoyed hot or cold, it's part of many daily routines."),
              ),
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(color: Colors.black,
                    borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Text("Volume Size",style: TextStyle(color: Colors.deepOrange,fontSize: 16,fontWeight: FontWeight.w700),),
                        ),

                    SizedBox(height: 15,),
                        Column(
                          children: [
                            Text(" - 30 ml",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w700),),
                            Text(" - 50 ml",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w700),),
                            Text(" - 70 ml",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w700),),
                            Text(" - 90 ml",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w700),),
                          ],
                        )
                                ],
                              ),
                  ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(color: Colors.black,
                  borderRadius: BorderRadius.circular(10)

                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text("Milk Content",style: TextStyle(color: Colors.deepOrange,fontSize: 16,fontWeight: FontWeight.w700),),
                    ),

                    SizedBox(height: 15,),
                    Column(
                      children: [
                        Text(" - small",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w700),),
                        Text("      - medium",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w700),),
                        Text(" - large",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w700),),
                        Text(" - Extra",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w700),),

                      ],
                    ),]
                ),
              )
                ],
              ),
              SizedBox(height: 80,),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          width: 200,
                          height: 70,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 1,
                                color: Colors.white,

                              )
                          ),
                          child: Center(child: Text("Add To Cart",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w800,),)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Container(
                        width: 60,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.black,
                        ),
                        child: IconButton(onPressed:  callBack,icon: Icon(Icons.favorite,size: 22,color: isSelected ? Colors.deepOrange: Colors.white,)),
                      ),
                    ),
                  ],
                ),
              ),


        ]
          ),
        ),
    )
    );
  }
}
