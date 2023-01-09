import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'biryani.dart';

class cold_drinks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: (
      SingleChildScrollView(
        child: Stack(children: [

          Column(
            children: [
              SizedBox(height: 30,),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Container(
                    height: 150,
                    width: 350,
                    decoration: BoxDecoration(

                        image: DecorationImage(
                          image: AssetImage("assets/images/blackbg.jpg"),
                          fit: BoxFit.cover,
                        ),

                        color: Color(0xFFf9f9f9),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            offset: const Offset(
                              3.0,
                              3.0,
                            ),
                            blurRadius: 4.0,
                            spreadRadius: 1.0,
                          ), //BoxShadow
                        ]
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/maaza.jpg'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10,),
                              Text("Mazza",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 24,color: Colors.white),),
                              SizedBox(height: 60,),
                              Row(
                                children: [
                                  Text("₹ 30",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30,color: Colors.white),),
                                  SizedBox(width: 40,),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => biryani()),
                                      );
                                    },
                                    child: Row(
                                      children: [
                                        Icon(Icons.add_shopping_cart,size: 15,),
                                        SizedBox(width: 5,),
                                        Text("Order"),
                                      ],
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0XFFf3bb52),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(5)),
                                    ),
                                  ),

                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),

                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Container(
                    height: 150,
                    width: 350,
                    decoration: BoxDecoration(

                        image: DecorationImage(
                          image: AssetImage("assets/images/blackbg.jpg"),
                          fit: BoxFit.cover,
                        ),

                        color: Color(0xFFf9f9f9),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            offset: const Offset(
                              3.0,
                              3.0,
                            ),
                            blurRadius: 4.0,
                            spreadRadius: 1.0,
                          ), //BoxShadow
                        ]
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/cocacola.jpg'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10,),
                              Text("Cocacola",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 24,color: Colors.white),),
                              SizedBox(height: 60,),
                              Row(
                                children: [
                                  Text("₹ 30",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30,color: Colors.white),),
                                  SizedBox(width: 40,),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => biryani()),
                                      );
                                    },
                                    child: Row(
                                      children: [
                                        Icon(Icons.add_shopping_cart,size: 15,),
                                        SizedBox(width: 5,),
                                        Text("Order"),
                                      ],
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0XFFf3bb52),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(5)),
                                    ),
                                  ),

                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),

                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Container(
                    height: 150,
                    width: 350,
                    decoration: BoxDecoration(

                        image: DecorationImage(
                          image: AssetImage("assets/images/blackbg.jpg"),
                          fit: BoxFit.cover,
                        ),

                        color: Color(0xFFf9f9f9),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            offset: const Offset(
                              3.0,
                              3.0,
                            ),
                            blurRadius: 4.0,
                            spreadRadius: 1.0,
                          ), //BoxShadow
                        ]
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/thumsup.jpg'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10,),
                              Text("Thums Up",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 24,color: Colors.white),),
                              SizedBox(height: 60,),
                              Row(
                                children: [
                                  Text("₹ 40",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30,color: Colors.white),),
                                  SizedBox(width: 40,),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => biryani()),
                                      );
                                    },
                                    child: Row(
                                      children: [
                                        Icon(Icons.add_shopping_cart,size: 15,),
                                        SizedBox(width: 5,),
                                        Text("Order"),
                                      ],
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0XFFf3bb52),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(5)),
                                    ),
                                  ),

                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),

                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Container(
                    height: 150,
                    width: 350,
                    decoration: BoxDecoration(

                        image: DecorationImage(
                          image: AssetImage("assets/images/blackbg.jpg"),
                          fit: BoxFit.cover,
                        ),

                        color: Color(0xFFf9f9f9),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            offset: const Offset(
                              3.0,
                              3.0,
                            ),
                            blurRadius: 4.0,
                            spreadRadius: 1.0,
                          ), //BoxShadow
                        ]
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/slice.jpg'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10,),
                              Text("Slice",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 24,color: Colors.white),),
                              SizedBox(height: 60,),
                              Row(
                                children: [
                                  Text("₹ 20",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30,color: Colors.white),),
                                  SizedBox(width: 40,),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => biryani()),
                                      );
                                    },
                                    child: Row(
                                      children: [
                                        Icon(Icons.add_shopping_cart,size: 15,),
                                        SizedBox(width: 5,),
                                        Text("Order"),
                                      ],
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0XFFf3bb52),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(5)),
                                    ),
                                  ),

                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),

                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Container(
                    height: 150,
                    width: 350,
                    decoration: BoxDecoration(

                        image: DecorationImage(
                          image: AssetImage("assets/images/blackbg.jpg"),
                          fit: BoxFit.cover,
                        ),

                        color: Color(0xFFf9f9f9),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            offset: const Offset(
                              3.0,
                              3.0,
                            ),
                            blurRadius: 4.0,
                            spreadRadius: 1.0,
                          ), //BoxShadow
                        ]
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/sprite.jpg'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10,),
                              Text("Sprite",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 24,color: Colors.white),),
                              SizedBox(height: 60,),
                              Row(
                                children: [
                                  Text("₹ 40",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30,color: Colors.white),),
                                  SizedBox(width: 40,),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => biryani()),
                                      );
                                    },
                                    child: Row(
                                      children: [
                                        Icon(Icons.add_shopping_cart,size: 15,),
                                        SizedBox(width: 5,),
                                        Text("Order"),
                                      ],
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0XFFf3bb52),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(5)),
                                    ),
                                  ),

                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),

                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Container(
                    height: 150,
                    width: 350,
                    decoration: BoxDecoration(

                        image: DecorationImage(
                          image: AssetImage("assets/images/blackbg.jpg"),
                          fit: BoxFit.cover,
                        ),

                        color: Color(0xFFf9f9f9),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            offset: const Offset(
                              3.0,
                              3.0,
                            ),
                            blurRadius: 4.0,
                            spreadRadius: 1.0,
                          ), //BoxShadow
                        ]
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/monster.png'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10,),
                              Text("Monster",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 24,color: Colors.white),),
                              Text("Energy Drink",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.white70),),
                              SizedBox(height: 45,),
                              Row(
                                children: [
                                  Text("₹ 80",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30,color: Colors.white),),
                                  SizedBox(width: 40,),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => biryani()),
                                      );
                                    },
                                    child: Row(
                                      children: [
                                        Icon(Icons.add_shopping_cart,size: 15,),
                                        SizedBox(width: 5,),
                                        Text("Order"),
                                      ],
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0XFFf3bb52),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(5)),
                                    ),
                                  ),

                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),

                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Container(
                    height: 150,
                    width: 350,
                    decoration: BoxDecoration(

                        image: DecorationImage(
                          image: AssetImage("assets/images/blackbg.jpg"),
                          fit: BoxFit.cover,
                        ),

                        color: Color(0xFFf9f9f9),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            offset: const Offset(
                              3.0,
                              3.0,
                            ),
                            blurRadius: 4.0,
                            spreadRadius: 1.0,
                          ), //BoxShadow
                        ]
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/redbull.jpg'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10,),
                              Text("Red Bull",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 24,color: Colors.white),),
                              Text("Energy Drink",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.white70),),
                              SizedBox(height: 45,),
                              Row(
                                children: [
                                  Text("₹ 99",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30,color: Colors.white),),
                                  SizedBox(width: 40,),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => biryani()),
                                      );
                                    },
                                    child: Row(
                                      children: [
                                        Icon(Icons.add_shopping_cart,size: 15,),
                                        SizedBox(width: 5,),
                                        Text("Order"),
                                      ],
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0XFFf3bb52),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(5)),
                                    ),
                                  ),

                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),

                  ),
                ),
              ),
              SizedBox(height: 30,),
            ],
          )

        ],),
      )

      ),
    );
  }
}
