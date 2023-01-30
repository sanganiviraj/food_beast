import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_beast/sign%20in.dart';
import 'package:food_beast/sign%20up.dart';

class login extends StatefulWidget  {

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> with SingleTickerProviderStateMixin{
  late TabController tabController;

  void initState(){
    tabController=TabController(length: 2, vsync: this);
    super.initState();
  }

  void dispose();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: (
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg4.png'),
              fit: BoxFit.cover
            )
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(height: 220,),
              Container(
                width: 370,
                height: 60,
                decoration: BoxDecoration(
                  // color: Colors.blue,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TabBar(
                          indicatorColor: Colors.deepOrange,
                          indicator: UnderlineTabIndicator(
                              borderSide: BorderSide(width: 3.0),
                              insets: EdgeInsets.symmetric(horizontal:16.0)
                          ),
                          labelColor: Colors.orange,
                          unselectedLabelColor: Colors.orange[200],
                          labelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),

                        controller: tabController,
                          tabs: [
                        Tab(
                          text: 'Sign In',
                        ),
                        Tab(
                          text: 'Sign Up',
                        ),
                      ]),
                    )
                  ],
                ),
              ),
              Expanded(child: TabBarView(
                controller: tabController,
                children: [sign_in(), sign_up()],
              ))
            ],
          ),
        )
        ),
      ),
    );
  }
}
