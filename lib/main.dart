import 'package:flutter/material.dart';
import 'package:food_beast/home_page.dart';
import 'package:food_beast/login.dart';
import 'package:food_beast/main_home.dart';
import 'package:food_beast/splash_screen.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_database/firebase_database.dart'



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(home:  splash_screen(),));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => login() ));
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
      ),
    );
  }

}