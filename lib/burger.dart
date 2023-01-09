import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class burger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: (
          Container(
              color: Color(0XFFf9f9f9),
              child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                SizedBox(
                  height: 40,
                ),
                Row(
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
                      padding: const EdgeInsets.only(left: 290),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/profile.jpg',
                        ),
                        radius: 20,
                      ),
                    )
                  ],
                ),
                Divider(color: Colors.black),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Burger",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 20),
                            child: Text("category",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Colors.black26)),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 8),
                            child: Text("Fast Food",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    color: Colors.black)),
                          ),

                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 20),
                            child: Text("Type",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Colors.black26)),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 8),
                            child: Text("Small",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    color: Colors.black)),
                          ),

                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 20),
                            child: Text("Plants",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Colors.black26)),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 8),
                            child: Text("Cactus",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    color: Colors.black)),
                          ),


                        ]),

                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Container(
                        height: 230,
                        width: 230,

                        decoration: BoxDecoration(
                            color: Colors.blue,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(
                                0.3,0.3
                              ),
                              spreadRadius: 1,
                              blurRadius: 5,
                              color: Colors.black45
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/images/burger.jpg'),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                    )


                  ],
                ),
                SizedBox(height: 40,),

                Container(
                  height: 382,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Color(0XFFf3bb52),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                      boxShadow:[
                        BoxShadow(
                            offset: Offset(
                                0.3,
                                0.3
                            ),
                            spreadRadius: 1,
                            blurRadius: 3,
                            color: Colors.black26
                        )
                      ]
                  ),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40,left: 20),
                        child: Text("About",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 10),
                        child: Text("A hamburger, or simply burger, is a food consisting of fillings—usually a patty of ground meat, typically beef—placed inside a sliced bun or bread roll. Hamburgers are often served with cheese, lettuce, tomato, onion, pickles, bacon, or chilis; condiments such as ketchup, mustard, mayonnaise, relish, or a special sauce",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),),
                      ),

                      SizedBox(height: 20,),

                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: LayoutBuilder(builder:
                      //       (BuildContext context, BoxConstraints viewportConstraints) {
                      //     return SingleChildScrollView(
                      //       scrollDirection: Axis.horizontal,
                      //       child: Row(
                      //         children: [
                      //           Padding(
                      //             padding: const EdgeInsets.all(8.0),
                      //             child: Container(
                      //               height: 60,
                      //               width: 150,
                      //
                      //               decoration: BoxDecoration(
                      //                   color: Colors.white,
                      //                   borderRadius: BorderRadius.circular(20),
                      //                   boxShadow: [
                      //                     BoxShadow(
                      //                         offset: Offset(
                      //                             0.3,0.3
                      //                         ),
                      //                         spreadRadius: 1,
                      //                         blurRadius: 3,
                      //                         color: Colors.black12
                      //                     )
                      //                   ]
                      //               ),
                      //
                      //               child: Row(
                      //                 children: [
                      //                   Padding(
                      //                     padding: const EdgeInsets.only(left: 10),
                      //                     child: CircleAvatar(
                      //                       child: Padding(
                      //                         padding: const EdgeInsets.all(8.0),
                      //                         child: Image.asset('assets/images/icon1.png'),
                      //                       ),
                      //                       backgroundColor: Color(0XFFf8ecc0),
                      //
                      //                     ),
                      //                   ),
                      //
                      //                   Padding(
                      //                     padding: const EdgeInsets.only(top: 15),
                      //                     child: Column(
                      //                       children: [
                      //                         Padding(
                      //                           padding: const EdgeInsets.only(left: 10),
                      //                           child: Text("Height",style: TextStyle(fontWeight: FontWeight.w400),),
                      //                         ),
                      //                         Padding(
                      //                           padding: const EdgeInsets.only(top: 4),
                      //                           child: Text("9.2'' ",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.black45,fontSize: 12),),
                      //                         )
                      //                       ],
                      //                     ),
                      //                   )
                      //                 ],
                      //               ),
                      //             ),
                      //           ),
                      //           Padding(
                      //             padding: const EdgeInsets.all(8.0),
                      //             child: Container(
                      //               height: 60,
                      //               width: 150,
                      //
                      //               decoration: BoxDecoration(
                      //                   color: Colors.white,
                      //                   borderRadius: BorderRadius.circular(20),
                      //                   boxShadow: [
                      //                     BoxShadow(
                      //                         offset: Offset(
                      //                             0.3,0.3
                      //                         ),
                      //                         spreadRadius: 1,
                      //                         blurRadius: 3,
                      //                         color: Colors.black12
                      //                     )
                      //                   ]
                      //               ),
                      //
                      //               child: Row(
                      //                 children: [
                      //                   Padding(
                      //                     padding: const EdgeInsets.only(left: 10),
                      //                     child: CircleAvatar(
                      //                       child: Padding(
                      //                         padding: const EdgeInsets.all(8.0),
                      //                         child: Image.asset('assets/images/icon2.png'),
                      //                       ),
                      //                       backgroundColor: Color(0XFF56b2a7),
                      //
                      //                     ),
                      //                   ),
                      //
                      //                   Padding(
                      //                     padding: const EdgeInsets.only(top: 15),
                      //                     child: Column(
                      //                       children: [
                      //                         Padding(
                      //                           padding: const EdgeInsets.only(left: 10),
                      //                           child: Text("Humadity",style: TextStyle(fontWeight: FontWeight.w400),),
                      //                         ),
                      //                         Padding(
                      //                           padding: const EdgeInsets.only(top: 4),
                      //                           child: Text("< 27 ",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.black45,fontSize: 12),),
                      //                         )
                      //                       ],
                      //                     ),
                      //                   )
                      //                 ],
                      //               ),
                      //             ),
                      //           ),
                      //           Padding(
                      //             padding: const EdgeInsets.all(8.0),
                      //             child: Container(
                      //               height: 60,
                      //               width: 150,
                      //
                      //               decoration: BoxDecoration(
                      //                   color: Colors.white,
                      //                   borderRadius: BorderRadius.circular(20),
                      //                   boxShadow: [
                      //                     BoxShadow(
                      //                         offset: Offset(
                      //                             0.3,0.3
                      //                         ),
                      //                         spreadRadius: 1,
                      //                         blurRadius: 3,
                      //                         color: Colors.black12
                      //                     )
                      //                   ]
                      //               ),
                      //
                      //               child: Row(
                      //                 children: [
                      //                   Padding(
                      //                     padding: const EdgeInsets.only(left: 10),
                      //                     child: CircleAvatar(
                      //                       child: Padding(
                      //                         padding: const EdgeInsets.all(8.0),
                      //                         child: Image.asset('assets/images/icon3.png'),
                      //                       ),
                      //                       backgroundColor: Color(0XFF7B86E1),
                      //
                      //                     ),
                      //                   ),
                      //
                      //                   Padding(
                      //                     padding: const EdgeInsets.only(top: 15),
                      //                     child: Column(
                      //                       children: [
                      //                         Padding(
                      //                           padding: const EdgeInsets.only(left: 10),
                      //                           child: Text("Weight",style: TextStyle(fontWeight: FontWeight.w400),),
                      //                         ),
                      //                         Padding(
                      //                           padding: const EdgeInsets.only(top: 4,left: 5),
                      //                           child: Text("5.3 kg'' ",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.black45,fontSize: 12),),
                      //                         )
                      //                       ],
                      //                     ),
                      //                   )
                      //                 ],
                      //               ),
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     );
                      //   }
                      //   ),
                      // ),

                      SizedBox(height: 30,),

                      Container(
                        color: Colors.white,
                        width: 392,
                        height: 150,

                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
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

                            SizedBox(
                              width: 150,
                              height: 50,
                              child: ElevatedButton(onPressed: (){}, child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.shopping_cart,color: Colors.black,),
                                  Text("Checkout",style: TextStyle(fontSize: 20,color: Colors.black),)
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


                          ],
                        ),
                      )

                    ],
                  ),
                )
              ]))
      ),
    );
  }

}
