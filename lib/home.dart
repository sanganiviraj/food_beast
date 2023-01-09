import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:food_beast/burger.dart';
import 'package:food_beast/manchurian.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:carousel_pro/carousel_pro.dart';

class home extends StatelessWidget {
  TextEditingController searchcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Text("Food Beast"),
          centerTitle: true,
          toolbarHeight: 50,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          )),
          elevation: 5,
          backgroundColor: Color(0XFFf3bb52),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.orange),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                  ),
                  accountName: Text(
                    "Sangani Viraj",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  accountEmail: Text(
                    "Vsviraj60@gmail.com",
                    style: TextStyle(color: Colors.black45, fontSize: 14),
                  ),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                title: Text(
                  "Setting",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.policy,
                  color: Colors.black,
                ),
                title: Text(
                  "Privacy Policy",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.favorite,
                  color: Colors.black,
                ),
                title: Text(
                  "Favorite",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                title: Text(
                  "About Us",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.login,
                  color: Colors.black,
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                onTap: () {},
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Stack(children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 8, bottom: 4),
                child: Text(
                  "Hello,Viraj",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 8),
              //   child: Text("What would like to eat",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w500),),
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: searchcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'Search',
                    suffixIcon: Icon(Icons.mic),
                    prefixIcon: Icon(Icons.search),
                    fillColor: Color(0XFFf4f4f4),
                    filled: true,
                  ),
                ),
              ),

              // ListView(
              //
              //   children: [
              //     CarouselSlider(items: [
              //       Container(
              //     margin: EdgeInsets.all(6.0),
              //     decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(8.0),
              //     image: DecorationImage(
              //       image: AssetImage('assets/imaegs/pic1.png'),
              //       fit: BoxFit.cover,
              //       )
              //     ),),
              //       Container(
              //         margin: EdgeInsets.all(6.0),
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(8.0),
              //             image: DecorationImage(
              //               image: AssetImage('assets/imaegs/pic2.png'),
              //               fit: BoxFit.cover,
              //             )
              //         ),),
              //       Container(
              //         margin: EdgeInsets.all(6.0),
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(8.0),
              //             image: DecorationImage(
              //               image: AssetImage('assets/imaegs/pic3.png'),
              //               fit: BoxFit.cover,
              //             )
              //         ),),
              //     ], options: CarouselOptions(
              //       height: 180,
              //       enlargeCenterPage: true,
              //       autoPlay: true,
              //       aspectRatio: 16 / 9,
              //       autoPlayCurve: Curves.fastOutSlowIn,
              //       enableInfiniteScroll: true,
              //       autoPlayAnimationDuration: Duration(milliseconds: 800),
              //       viewportFraction: 0.8,
              //     ))
              //   ],
              // )

              Center(
                child: Container(
                  width: 360,
                  height: 180,
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 180,
                        width: 360,
                        child: Carousel(
                          dotSize: 7,
                          dotColor: Colors.white,
                          dotIncreasedColor: Colors.deepOrange,
                          dotBgColor: Colors.transparent,
                          dotSpacing: 15,
                          dotPosition: DotPosition.bottomCenter,
                          images: [
                            Image.asset('assets/images/pic1.png',fit:BoxFit.cover),
                            Image.asset('assets/images/pic2.png',fit:BoxFit.cover),
                            Image.asset('assets/images/pic3.png',fit:BoxFit.cover)
                          ],
                        )
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Suggetion for You... ",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          height: 250,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0.3, 0.3),
                                    spreadRadius: 1,
                                    blurRadius: 3,
                                    color: Colors.black12)
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, top: 10, right: 10, bottom: 10),
                                child: Container(
                                  width: 170,
                                  height: 130,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/burger.jpg'),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  "Burger",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 18),
                                child: Text(
                                  "Best Choice",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 18),
                                    child: Text(
                                      "₹ 300",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Container(
                                      width: 80,
                                      height: 30,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => burger()),
                                          );
                                        },
                                        child: Text("Buy"),
                                        style: ElevatedButton.styleFrom(
                                            primary: Color(0XFFf3bb52),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          height: 250,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0.3, 0.3),
                                    spreadRadius: 1,
                                    blurRadius: 3,
                                    color: Colors.black12)
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, top: 10, right: 10, bottom: 10),
                                child: Container(
                                  width: 170,
                                  height: 130,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/pizza.jpg'),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  "Pizza",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(left: 18),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Trending",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      ),
                                      Icon(
                                        Icons.local_fire_department,
                                        color: Colors.red[400],
                                        size: 10,
                                      )
                                    ],
                                  )),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 18),
                                    child: Text(
                                      "₹ 499",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Container(
                                      width: 80,
                                      height: 30,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text("Buy"),
                                        style: ElevatedButton.styleFrom(
                                            primary: Color(0XFFf3bb52),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20))),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          height: 250,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0.3, 0.3),
                                    spreadRadius: 1,
                                    blurRadius: 3,
                                    color: Colors.black12)
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, top: 10, right: 10, bottom: 10),
                                child: Container(
                                  width: 170,
                                  height: 130,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/manchuriyam.jpg'),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  "Manchurian",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 18),
                                child: Text(
                                  "Best Choice",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 18),
                                    child: Text(
                                      "₹ 150",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Container(
                                      width: 80,
                                      height: 30,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => manchurian())
                                          );
                                        },
                                        child: Text("Buy"),
                                        style: ElevatedButton.styleFrom(
                                            primary: Color(0XFFf3bb52),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20))),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
              SizedBox(
                height: 25,
              ),

              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text(
                        "Pupular Food ",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.pink[300],
                      )
                    ],
                  )),

              SizedBox(
                height: 20,
              ),

              Center(
                child: Container(
                  height: 150,
                  width: 370,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.3, 0.3),
                            spreadRadius: 1,
                            blurRadius: 3)
                      ]),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/burger.jpg'),
                          radius: 65,
                        ),
                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "Burger",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 26),
                            ),
                          ),
                          SizedBox(height: 3,),

                          Container(
                            width: 220,
                            child: Text(
                              "Favorite combo of Classic Zinger Burger, Medium Fries & a chilled Pepsi Black",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 12,color: Colors.black38),
                            ),
                          ),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 40),
                                child: Text(
                                  "150kcal",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400, fontSize: 18),
                                ),
                              ),

                              SizedBox(width: 80,),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text("+ Buy"),
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0XFFf3bb52),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(5))),
                                ),
                              ),

                            ],
                          )

                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 150,
                  width: 370,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.3, 0.3),
                            spreadRadius: 1,
                            blurRadius: 3)
                      ]),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage:
                          AssetImage('assets/images/dosa.jpg'),
                          radius: 65,
                        ),
                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "Dosa",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 26),
                            ),
                          ),
                          SizedBox(height: 3,),

                          Container(
                            width: 220,
                            child: Text(
                              "South Indian cuisine made from a  batter of ground black lentils and rice.",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 12,color: Colors.black38),
                            ),
                          ),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 40),
                                child: Text(
                                  "151kcal",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400, fontSize: 18),
                                ),
                              ),

                              SizedBox(width: 80,),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text("+ Buy"),
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0XFFf3bb52),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(5))),
                                ),
                              ),

                            ],
                          )

                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 150,
                  width: 370,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.3, 0.3),
                            spreadRadius: 1,
                            blurRadius: 3)
                      ]),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage:
                          AssetImage('assets/images/biryani.jpg'),
                          radius: 65,
                        ),
                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "Biryani",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 26),
                            ),
                          ),
                          SizedBox(height: 3,),

                          Container(
                            width: 220,
                            child: Text(
                              "spiced mix of meat and rice, traditionally cooked over an open fire in a leather pot.",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 12,color: Colors.black38),
                            ),
                          ),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 40),
                                child: Text(
                                  "200kcal",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400, fontSize: 18),
                                ),
                              ),

                              SizedBox(width: 80,),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text("+ Buy"),
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0XFFf3bb52),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(5))),
                                ),
                              ),

                            ],
                          )

                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 150,
                  width: 370,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.3, 0.3),
                            spreadRadius: 1,
                            blurRadius: 3)
                      ]),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage:
                          AssetImage('assets/images/frankie.jpg'),
                          radius: 65,
                        ),
                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "Frankie",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 26),
                            ),
                          ),
                          SizedBox(height: 3,),

                          Container(
                            width: 220,
                            child: Text(
                              "Indian street food wrap stuffed with spicy potato and grated cheese on the top",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 12,color: Colors.black38),
                            ),
                          ),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 40),
                                child: Text(
                                  "100kcal",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400, fontSize: 18),
                                ),
                              ),

                              SizedBox(width: 80,),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text("+ Buy"),
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0XFFf3bb52),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(5))),
                                ),
                              ),

                            ],
                          )

                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 150,
                  width: 370,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.3, 0.3),
                            spreadRadius: 1,
                            blurRadius: 3)
                      ]),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage:
                          AssetImage('assets/images/frice.jpg'),
                          radius: 65,
                        ),
                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "Frice",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 26),
                            ),
                          ),
                          SizedBox(height: 3,),

                          Container(
                            width: 220,
                            child: Text(
                              "deep-fried potatoes that have been cut into various shapes",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 12,color: Colors.black38),
                            ),
                          ),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 40),
                                child: Text(
                                  "280Kcal",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400, fontSize: 18),
                                ),
                              ),

                              SizedBox(width: 80,),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text("+ Buy"),
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0XFFf3bb52),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(5))),
                                ),
                              ),

                            ],
                          )

                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),


              SizedBox(
                height: 70,
              ),
            ],
          ),
        ])));
  }
}
