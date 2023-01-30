import 'package:firebase_database/firebase_database.dart';


class firebase_db{
  List<Map> data=[];
  FirebaseDatabase database=FirebaseDatabase.instance;
  String selectedkey='';

  insert(String emailcontroller,String namecontroller,String passcontroller) async {
    String? key=database
        .ref('user')
        .push()
        .key;

    database
    .ref('user')
    .child(key!)
    .set({
      'name' : namecontroller,
      'email' : emailcontroller,
      'pass' : passcontroller,
      'key' : key
    });

}

  select() async {
    DatabaseEvent d = await database.ref('User').once();
    Map temp = d.snapshot.value as Map;
    data.clear();
    temp.forEach((key, value) {
      data.add(value);
    });
    return data;
  }

}