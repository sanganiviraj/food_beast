import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_beast/Nonveg.dart';
import 'package:food_beast/Veg.dart';

class home_page extends StatelessWidget {

  String veg='Veg';
  String nonveg='Non-Veg';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(

          title: const Text("Food Beast"),
          centerTitle: true,
          toolbarHeight: 50,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )
          ),
          elevation: 5,
          backgroundColor: Color(0XFFf3bb52),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Veg'),
              Tab(text: 'Non-veg')
            ],
            indicatorColor: Colors.black,
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 3.0),
                insets: EdgeInsets.symmetric(horizontal:16.0)
            ),
            labelColor: Colors.black,
            unselectedLabelColor: Colors.white,
            // indicatorSize: TabBarIndicatorSize.label,

          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.orange
                ),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.orange,

                  ),
                  accountName: Text("Sangani Viraj",style: TextStyle(color: Colors.black,fontSize: 20),),
                  accountEmail: Text("Vsviraj60@gmail.com",style: TextStyle(color: Colors.black45,fontSize: 14),),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home,color: Colors.black,),
                title: Text("Home",style: TextStyle(color: Colors.black,fontSize: 20),),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.settings,color: Colors.black,),
                title: Text("Setting",style: TextStyle(color: Colors.black,fontSize: 20),),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.policy,color: Colors.black,),
                title: Text("Privacy Policy",style: TextStyle(color: Colors.black,fontSize: 20),),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.favorite,color: Colors.black,),
                title: Text("Favorite",style: TextStyle(color: Colors.black,fontSize: 20),),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.person,color: Colors.black,),
                title: Text("About Us",style: TextStyle(color: Colors.black,fontSize: 20),),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.login,color: Colors.black,),
                title: Text("Logout",style: TextStyle(color: Colors.black,fontSize: 20),),
                onTap: (){},
              )

            ],
          ),
        ),
        body: TabBarView(
          children: [
            Veg(),
            Nonveg(),

          ],
        ),

      ),
    );
  }

}