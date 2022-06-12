import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:button/Login.dart';
import 'package:button/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();


  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FirstRoute(),
  ));
}
class FirstRoute extends StatefulWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  State<FirstRoute> createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
        child: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('images/waste.png'),
          fit: BoxFit.fill,
    )
    ),

              child: Center(child: Container(
                margin: const EdgeInsets.only(top: 400.0),
                child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: Size(250 , 70),
            textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            primary: Colors.teal,
            elevation: 30,
            shadowColor: Colors.teal,
            side: BorderSide(color: Colors.white54, width: 4),
            shape: StadiumBorder(),
          ),
          child: Text("Login Here"),
          //color: Colors.teal,

          onPressed: (){

            //showDataDustbin_1();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
          },
        ),
      ),))
    )));
  }
}