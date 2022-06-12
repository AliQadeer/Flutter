import 'package:button/home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  late final dref= FirebaseDatabase.instance.reference();
  late DatabaseReference databaseReference;
  static Future<User?> loginUsinEmailPassword({required String email,required String password, required BuildContext context }) async{
    FirebaseAuth auth =FirebaseAuth.instance;
    User? user;
    try{
      UserCredential userCredential=await auth.signInWithEmailAndPassword(email: email, password: password);
      user=userCredential.user;
    } on FirebaseAuthException catch(e){
      if(e.code=="user-not-found"){
        print("Incorrect Email/User ID");
      }
    }
    return user;
  }
  void showData(){
      dref .once().then((snapshot){
      //print(snapshot.value);
      dref.child('V1').onValue.listen((event) {
        final String dustbin_1= event.snapshot.value;
        print(dustbin_1);
      });
    });
  }
  @override
  Widget build(BuildContext context) {

    TextEditingController _emailController =TextEditingController();
    TextEditingController _passwordController =TextEditingController();
    bool isHiddenPassword=true;
    return Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/login.png'),
                        fit: BoxFit.cover,
                      )),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                          children:[
                            Container(
                              margin: const EdgeInsets.only(left: 50.0, top: 250.0 , right: 50.0),
                              child: TextField(
                                  controller: _emailController,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.person),
                                    hintText: 'User ID',
                                  )),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 50.0 , right: 50.0),
                              child: TextField(
                                  controller: _passwordController,
                                  obscureText: isHiddenPassword,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      prefixIcon: Icon(Icons.lock),
                                      hintText: 'Password',
                                      suffixIcon: GestureDetector(
                                          onTap: (){
                                            setState(() {
                                              isHiddenPassword!=isHiddenPassword;
                                            });
                                          },
                                          child: Icon(isHiddenPassword? Icons.visibility:Icons.visibility_off))
                                  )),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
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
                              onPressed: () async{
                                //showData();
                                User? user=await loginUsinEmailPassword(email: _emailController.text, password: _passwordController.text, context: context);
                                print(user);
                                if(user!=null){
                                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context){
                                    return HomePage();
                                  }), (route) => false);
                                }
                              },
                            ),
                          ]
                      ),
                    ),
                  ))));

  }
}