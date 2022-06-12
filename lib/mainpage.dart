import 'package:button/google_map_screen.dart';
import 'package:button/redbinmap.dart';
import 'package:button/yellowbinmap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart ';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late final dref= FirebaseDatabase.instance.reference();

  late DatabaseReference databaseReference;

  @override
  void initState() {
    super.initState();
    showDataDustbin_1();
    showDataDustbin_2();
    showDataDustbin_3();
  }

  void showDataDustbin_1(){
    dref.child('V1').onValue.listen((event) {
      final String dustbin_1= event.snapshot.value;
      setState(() {
        print( dustbin_1);
        if(dustbin_1 == "90"){
          print("child cha10nged");
           showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Green Dustbin is full. Please Empty it,\n Driver Name: Umer \n Phone No. 03458724572", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const GoogleMapScreen()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };
        if(dustbin_1 == "91"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Green Dustbin is full. Please Empty it,\n Driver Name: Umer \n Phone No. 03458724572", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const GoogleMapScreen()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };
        if(dustbin_1 == "92"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Green Dustbin is full. Please Empty it,\n Driver Name: Umer \n Phone No. 03458724572", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const GoogleMapScreen()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };
        if(dustbin_1 == "93"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Green Dustbin is full. Please Empty it,\n Driver Name: Umer \n Phone No. 03458724572", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const GoogleMapScreen()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };
        if(dustbin_1 == "94"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Green Dustbin is full. Please Empty it,\n Driver Name: Umer \n Phone No. 03458724572", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const GoogleMapScreen()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };
        if(dustbin_1 == "95"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Green Dustbin is full. Please Empty it,\n Driver Name: Umer \n Phone No. 03458724572", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const GoogleMapScreen()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };
        if(dustbin_1 == "96"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Green Dustbin is full. Please Empty it,\n Driver Name: Umer \n Phone No. 03458724572", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const GoogleMapScreen()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };
        if(dustbin_1 == "97"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Green Dustbin is full. Please Empty it,\n Driver Name: Umer \n Phone No. 03458724572", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const GoogleMapScreen()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };
        if(dustbin_1 == "98"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Green Dustbin is full. Please Empty it,\n Driver Name: Umer \n Phone No. 03458724572", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const GoogleMapScreen()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };
        if(dustbin_1 == "99"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Green Dustbin is full. Please Empty it,\n Driver Name: Umer \n Phone No. 03458724572", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const GoogleMapScreen()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };
        if(dustbin_1 == "100"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Green Dustbin is full. Please Empty it,\n Driver Name: Umer \n Phone No. 03458724572", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const GoogleMapScreen()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };

      });
    });
  }
  void showDataDustbin_2(){
    dref.child('V2').onValue.listen((event) {
      final String dustbin_2= event.snapshot.value;
      setState(() {
        print( dustbin_2);
        if(dustbin_2 == "90"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Red Dustbin is full. Please Empty it,\nDriver Name: Hassan \nPhone No. 03201234567", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const redBinMap()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };
        if(dustbin_2 == "91"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Red Dustbin is full. Please Empty it,\nDriver Name: Hassan \nPhone No. 03201234567", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const redBinMap()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };
        if(dustbin_2 == "92"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Red Dustbin is full. Please Empty it,\nDriver Name: Hassan \nPhone No. 03201234567", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const redBinMap()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };
        if(dustbin_2 == "93"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Red Dustbin is full. Please Empty it,\nDriver Name: Hassan \nPhone No. 03201234567", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const redBinMap()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };
        if(dustbin_2 == "94"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Red Dustbin is full. Please Empty it,\nDriver Name: Hassan \nPhone No. 03201234567", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const redBinMap()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };
        if(dustbin_2 == "95"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Red Dustbin is full. Please Empty it,\nDriver Name: Hassan \nPhone No. 03201234567", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const redBinMap()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };
        if(dustbin_2 == "96"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Red Dustbin is full. Please Empty it,\nDriver Name: Hassan \nPhone No. 03201234567", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const redBinMap()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };
        if(dustbin_2 == "97"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Red Dustbin is full. Please Empty it,\nDriver Name: Hassan \nPhone No. 03201234567", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const redBinMap()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };
        if(dustbin_2 == "98"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Red Dustbin is full. Please Empty it,\nDriver Name: Hassan \nPhone No. 03201234567", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const redBinMap()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };
        if(dustbin_2 == "99"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Red Dustbin is full. Please Empty it,\nDriver Name: Hassan \nPhone No. 03201234567", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const redBinMap()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };
        if(dustbin_2 == "100"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Red Dustbin is full. Please Empty it,\nDriver Name: Hassan \nPhone No. 03201234567", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const redBinMap()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };



      });
    });
  }
  void showDataDustbin_3(){
    dref.child('V3').onValue.listen((event) {
      final String dustbin_3= event.snapshot.value;
      setState(() {
        print( dustbin_3);
        if(dustbin_3 == "90"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Yellow Dustbin is full. Please Empty it,\nDriver Name: Ali \nPhone No. 03334765836", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const yellowBinMap()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };
        if(dustbin_3 == "91"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Yellow Dustbin is full. Please Empty it,\nDriver Name: Ali \nPhone No. 03334765836", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const yellowBinMap()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };
        if(dustbin_3 == "92"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Yellow Dustbin is full. Please Empty it,\nDriver Name: Ali \nPhone No. 03334765836", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const yellowBinMap()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };
        if(dustbin_3 == "93"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Yellow Dustbin is full. Please Empty it,\nDriver Name: Ali \nPhone No. 03334765836", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const yellowBinMap()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };
        if(dustbin_3 == "94"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Yellow Dustbin is full. Please Empty it,\nDriver Name: Ali \nPhone No. 03334765836", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const yellowBinMap()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };
        if(dustbin_3 == "95"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Yellow Dustbin is full. Please Empty it,\nDriver Name: Ali \nPhone No. 03334765836", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const yellowBinMap()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };
        if(dustbin_3 == "96"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Yellow Dustbin is full. Please Empty it,\nDriver Name: Ali \nPhone No. 03334765836", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const yellowBinMap()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };
        if(dustbin_3 == "97"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Yellow Dustbin is full. Please Empty it,\nDriver Name: Ali \nPhone No. 03334765836", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const yellowBinMap()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };
        if(dustbin_3 == "98"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Yellow Dustbin is full. Please Empty it,\nDriver Name: Ali \nPhone No. 03334765836", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const yellowBinMap()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };
        if(dustbin_3 == "99"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Yellow Dustbin is full. Please Empty it,\nDriver Name: Ali \nPhone No. 03334765836", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const yellowBinMap()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };
        if(dustbin_3 == "100"){
          print("child cha10nged");
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text("Alert!!!", style: TextStyle(fontSize: 20, color: Colors.black87),),
              content: Text("Yellow Dustbin is full. Please Empty it,\nDriver Name: Ali \nPhone No. 03334765836", style: TextStyle(fontSize: 20),),
              actions: [
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const yellowBinMap()),
                  );
                }, child: Text("Dustbin Location"))
              ],
            );
          });
        };


      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()=> _onBackButtonPressed(context),
      child: Scaffold(
        //backgroundColor: Colors.teal,
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/home.png'),
                  fit: BoxFit.cover,
                )),
            child: Center(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only( top: 150.0 , right: 120.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const GoogleMapScreen()),
                        );
                      },
                      child: Image(
                        image: AssetImage('images/green1.png'),
                        fit: BoxFit.cover,
                        height: 70,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only( top: 70.0 , left: 130.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const redBinMap()),
                        );
                      },
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const redBinMap()),
                          );
                        },
                        child: Image(
                          image: AssetImage('images/red1.png'),
                          fit: BoxFit.cover,
                          height: 90,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only( top: 70.0 , right: 130.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const yellowBinMap()),
                        );
                      },
                      child: Image(
                        image: AssetImage('images/yellow1.png'),
                        fit: BoxFit.cover,
                        height: 70,
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> _onBackButtonPressed(BuildContext context) async{
    bool? exitApp = await showDialog(context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: const Text("Really??"),
            content: const Text("Do you want to exit the App?"),
            actions: [
              TextButton(onPressed: (){
                Navigator.of(context).pop(false);
              }, child: const Text("NO"),),
              TextButton(onPressed: (){
                Navigator.of(context).pop(true);
              }, child: const Text("Yes"),)
            ],
          );

        });
    return exitApp ?? false;
  }
}
