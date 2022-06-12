import 'package:flutter/material.dart';
class retrievedata extends StatefulWidget {
  const retrievedata({Key? key}) : super(key: key);

  @override
  State<retrievedata> createState() => _retrievedataState();
}

class _retrievedataState extends State<retrievedata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
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
            child: Text("Sign In"),
            onPressed: (){

            },
          ),
        ),
      ),
    );
  }
}
