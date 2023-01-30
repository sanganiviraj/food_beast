import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_beast/main_home.dart';
import 'package:food_beast/profile.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class sign_in extends StatefulWidget {
  const sign_in({Key? key}) : super(key: key);

  @override
  State<sign_in> createState() => _sign_inState();
}

class _sign_inState extends State<sign_in> {
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  TextEditingController dateinput=TextEditingController();
  GlobalKey<FormState> formkey=GlobalKey<FormState>();



  String ?arr;
  String ?pasd;

  bool pass=true;

  String email="";
  String pass_text="";

  void valid(){
    if(formkey.currentState!.validate()){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>main_home()));
    }
    else{
      print("not valid");
    }
  }
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,

      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0XFFf7f7f7),
        body: Center(
          child: Container(
            width: 370,
            color: Color(0XFFf7f7f7),
            child: Form(
              key: formkey,
              child: (
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 50,),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            cursorColor: Colors.orange,
                            // primarySwatch: Colors.blue,
                            // fillColor: CustomColors.seaweed,
                            controller: emailcontroller,
                            onChanged: (val){
                              arr=(val.length>=10)?'Please Enter Valid Input':null;

                              setState(() {

                              });
                            },
                            decoration: InputDecoration(
                                // fillColor: Colors.red,
                                // iconColor: Colors.red,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),

                                ),
                                // focusedBorder: OutlineInputBorder(
                                //     borderSide: BorderSide(width: 2, color: Colors.orangeAccent),),
                                hintText: 'Please Your Email Address',

                                labelText: 'Email',
                                // labelStyle: TextStyle(color: Colors.red),
                                errorText: arr,
                                prefixIcon: Icon(Icons.email),
                                suffixIcon: Icon(Icons.search),

                            ),
                            validator: (value){
                              if(value!.isEmpty){
                                return 'Please Enter Email ';
                              }
                              if(!RegExp("^[a-zA-z0-9+_.-]+@[gmail.com]").hasMatch(value)){
                                return 'Enter Valid Email';
                              }
                              return null;
                            },

                          ),
                        ),
                      ),

                      SizedBox(height: 10),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          controller: passwordcontroller,
                          onChanged: (val){

                            pasd=(val.length>=8)?'please Enter Valid Password':null;
                            setState(() {

                            });
                          },
                          obscureText: pass,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            hintText: 'Password',
                            errorText: pasd,

                            prefixIcon: Icon(Icons.password),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.visibility),
                              onPressed: (){
                                setState(() {
                                  pass=!pass;
                                });
                              },
                            ),

                          ),
                          validator: (value){
                            if(value!.isEmpty){
                              return 'Please Enter Password';
                            }
                            if(value.trim().length>8){
                                return 'Passsword Should be in 8 character in length';
                            }
                            return null;
                          },
                        ),
                      ),

                      SizedBox(height:25),

                      Container(
                        height: 50,
                        width: 230,
                        child: ElevatedButton(
                        onPressed: valid,
                        child: Text(
                          'Sign In',
                          style: TextStyle(color: Colors.white,fontSize: 18,),
                        ),style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          primary: Colors.orange
                        ),
                        ),
                      ),

                      SizedBox(height: 30,),
                      Divider(
                        indent: 10,
                        thickness: 2,
                        color: Colors.black45,
                      ),
                      SizedBox(height: 30,),
                      Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                        Container(
                          child: Row(
                            children: [
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Icon(FontAwesomeIcons.facebook,color: Colors.deepOrangeAccent,size: 50,),
                             ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(FontAwesomeIcons.instagram,size: 50,color: Colors.deepOrangeAccent),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                FontAwesomeIcons.google,
                                size: 50,
                                  color: Colors.deepOrangeAccent
                              ),
                            )
                          ],)),
                    ],)

                ],
                  )
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class GradientIcon extends StatelessWidget {
  GradientIcon(
      this.icon,
      this.size,
      this.gradient,
      );

  final IconData icon;
  final double size;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      child: SizedBox(
        width: size * 1.2,
        height: size * 1.2,
        child: Icon(
          icon,
          size: size,
          color: Colors.white,
        ),
      ),
      shaderCallback: (Rect bounds) {
        final Rect rect = Rect.fromLTRB(0, 0, size, size);
        return gradient.createShader(rect);
      },
    );
  }
}