import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';

class profile extends StatelessWidget {
  var emailcontroller;

  profile();

  final List<String> imglist = [
    'assets/images2/food.png',
    // 'assets/images2/hm.png',
    'assets/images2/meal.png',
    'assets/images2/myfood.png',
    'assets/images2/meal2.png',
    'assets/images2/meal3.png',
    'assets/images2/meal4.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/profilebg.png'),
                  fit: BoxFit.cover)),
          child: (Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 120,
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                  radius: 60,
                ),
              ),
              Container(
                width: double.infinity,
                height: 30,
              ),
              Center(
                  child: Text(
                "Sangani Viraj",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              )),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                    Text(
                      'India(Gujrat)',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                indent: 10,
                endIndent: 10,
                thickness: 2,
                color: Colors.black38,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.home,
                        size: 30,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(fontSize: 17),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.favorite,
                        size: 30,
                      ),
                      Text(
                        'Favorite',
                        style: TextStyle(fontSize: 17),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.shoppingCart,
                        size: 30,
                      ),
                      Text(
                        'Cart',
                        style: TextStyle(fontSize: 17),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                indent: 10,
                endIndent: 10,
                thickness: 2,
                color: Colors.black38,
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                  child: Text(
                'New',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
              )),
              SizedBox(height: 10,),
              CarouselSlider(
                  items: imglist.map((item) => Container(
                        child: Center(
                          child: CircleAvatar(
                            backgroundImage: AssetImage(item),
                            radius: 100,
                            backgroundColor: Color(0XFFfbb03b),

                          )
                        ),
                      )).toList(),
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,

                  ))
            ],
          )),
        ),
      ),
    );
  }
}
