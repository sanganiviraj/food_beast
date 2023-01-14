import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_beast/main_home.dart';
import 'package:intl/intl.dart';

class sign_up extends StatefulWidget {
  const sign_up({Key? key}) : super(key: key);

  @override
  State<sign_up> createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {
  TextEditingController emailcontrol=TextEditingController();
  TextEditingController Namecontrol=TextEditingController();
  TextEditingController dateinput=TextEditingController();
  TextEditingController passcontrol=TextEditingController();
  
  String ?arr;
  String ?pass;
  String ?gender;
  
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  bool password=true;
  bool value1=false;
  bool value2=false;
  bool value3=false;




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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: Namecontrol,
                    onChanged: (val){
                      setState(() {

                      });
                    },
                    cursorColor: Colors.orange,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                      ),
                      hintText: 'Enter Your Full Name',
                      labelText: 'Name',
                      prefixIcon: Icon(Icons.person),

                    ),

                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: emailcontrol,
                    onChanged: (val){
                      arr=(val.length>10)?'Please Enter Valid Input':null;
                      setState(() {

                      });
                    },
                    cursorColor: Colors.orange,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                      ),
                      hintText: 'Enter Your Email Address',
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email),
                      errorText: arr,


                    ),

                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    controller: passcontrol,
                    onChanged: (val){

                      pass=(val.length>=10)?'please Enter Valid Password':null;
                      setState(() {

                      });
                    },
                    obscureText: password,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      hintText: 'Password',
                      errorText: pass,

                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.visibility),
                        onPressed: (){
                          setState(() {
                            password=!password;
                          });
                        },
                      ),

                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2004), //DateTime.now() - not to allow to choose before today.
                          lastDate: DateTime(2023)
                      );

                      if(pickedDate != null ){
                        // print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                        String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                        // print(formattedDate); //formatted date output using intl package =>  2021-03-16
                        //you can implement different kind of Date Format here according to your requirement
                        setState(() {
                          dateinput.text = formattedDate; //set output date to TextField value.
                        });
                      }
                      // else{
                      //   print("Date is not selected");
                      // }
                    },
                    controller: dateinput,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        hintText: 'date',
                        prefixIcon: Icon(Icons.date_range)
                    ),
                  ),

                ),


                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Gender : ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),),
                      Radio(value: "male", groupValue: gender, onChanged: (val){
                        setState(() {
                          gender=val.toString();
                        });
                      }),Text("Male"),
                      SizedBox(width:10,),

                      Radio(value: "female", groupValue: gender, onChanged: (val){
                        setState(() {
                          gender=val.toString();
                        });
                      }),Text("Female")
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    Text("Interest : ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),),
                      Column(
                        children: [
                          Row(children: [
                            Checkbox(value: value1, onChanged: (bool? value){
                              setState(() {
                                value1=value!;
                              });
                            }),
                            Text("veg",style: TextStyle(fontSize: 16),),
                            SizedBox(width: 5,),
                            Checkbox(value: value2, onChanged: (bool? value){
                              setState(() {
                                value2=value!;
                              });
                            }),
                            Text("Non-Veg",style: TextStyle(fontSize: 16),),
                            SizedBox(width: 5,),
                            Checkbox(value: value3, onChanged: (bool? value){
                              setState(() {
                                value3=value!;
                              });
                            }),
                            Text("Mix",style: TextStyle(fontSize: 16),),
                          ],),


                        ],
                      )

                  ],),
                ),
                SizedBox(height: 40,),
                Center(
                  child: Container(
                    height: 50,
                    width: 340,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => main_home() ));
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white,fontSize: 18,),
                      ),style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        primary: Colors.orange
                    ),
                    ),
                  ),
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
