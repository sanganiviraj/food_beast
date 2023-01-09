import 'package:flutter/material.dart';
import 'package:food_beast/home_page.dart';
import 'package:food_beast/main_home.dart';
import 'package:food_beast/splash_screen.dart';

void main() {
  runApp(MaterialApp(home:  splash_screen(),));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: (
      Container(
        decoration: BoxDecoration(
            color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/images/bg2.png'),
            fit: BoxFit.fitWidth
          )
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            new GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => main_home() ));
              },
              child: Container(
                width: double.infinity,
                height: 100,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
                  color: Color(0XFFf3bb52),
                ),
                child: Center(child: Text("Get Started",style: TextStyle(fontSize: 30,fontFamily: 'myfont',color: Colors.black),)),

              ),
            )
          ],
        ),

      )
      ),
    );
  }

}