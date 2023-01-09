import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  biryani extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: (
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),

              Container(
                height: 450,
                child: Stack(
                    children : [
                      Container(
                          width: double.infinity,
                          height: 400,
                          decoration: BoxDecoration(
                              color: Color(0XFFe7e7ef),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0.3,0.3),
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  color: Colors.black26,
                                ),
                              ]
                          ),
                          child:Column(
                            children: [
                              Row(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: IconButton(
                                        icon: Icon(Icons.arrow_back),
                                        onPressed: (){
                                          Navigator.pop(context);
                                        },
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 290,top: 10),
                                      child: Icon(Icons.favorite,color: Colors.pink[300],)
                                  ),
                                  SizedBox(height: 20,),

                                ],),
                              SizedBox(height: 30,),
                              Container(
                                width: 350,
                                height: 240,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(11),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0.3,0.3),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        color: Colors.black45,
                                      ),
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage('assets/images/biryani.jpg'),
                                        fit: BoxFit.cover
                                    )
                                ),
                              )

                            ],
                          )
                      ),
                      Positioned(
                        top: 380,
                        left: 120,
                        child: Container(
                          width: 150,
                          height: 50,

                          decoration: BoxDecoration(
                            color: Color(0XFFf3bb52),
                            borderRadius: BorderRadius.circular(11),
                            // boxShadow:[
                            //   BoxShadow(
                            //       offset: Offset(
                            //           0.3,
                            //           0.3
                            //       ),
                            //       spreadRadius: 1,
                            //       blurRadius: 3,
                            //       color: Colors.black26
                            //   )
                            // ],

                          ),
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                icon: Icon(Icons.remove,size: 30,),
                                onPressed: (){},
                              ),
                              Text("1",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30),),
                              IconButton(
                                icon: Icon(Icons.add,size: 30,),
                                onPressed: (){},
                              ),


                            ],
                          ),
                        ),
                      ),
                    ]

                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Biryani",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Text(
                      "₹ 200",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),


              Divider(
                thickness: 2,
                color: Colors.black26,
                indent: 20,
                endIndent: 20,
              ),
              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Introduction",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Simply put, biryani is a spiced mix of meat and rice, traditionally cooked over an open fire in a leather pot. It is combined in different ways with a variety of components to create a number of highly tasty and unique flavor combinations.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300,color: Colors.black45),),

              ),

              SizedBox(height: 130,),
              Center(
                child: SizedBox(
                  width: 380,
                  height: 60,
                  child: ElevatedButton(onPressed: (){}, child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.shopping_cart,color: Colors.black,),
                      Text("Order Now",style: TextStyle(fontSize: 20,color: Colors.black),)
                    ],
                  ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0XFFf3bb52),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11)
                      ),
                      shadowColor: Colors.black26,
                    ),

                  ),
                ),
              ),



            ],
          )
      ),
    );
  }

}