import 'package:button/home.dart';
import 'package:flutter/material.dart';
class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()=> _onBackButtonPressed(context),
      child: Container(
        child: Center(
          child: Text("Help Page"),
        ),
      ),
    );
  }

  _onBackButtonPressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }

}
