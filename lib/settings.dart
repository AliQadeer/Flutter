import 'package:button/Login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart ';
import 'package:flutter/widgets.dart';
import 'home.dart';
class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  final _FormKey = GlobalKey<FormState>();

  var newPassword = " ";

  final newPasswordControiller = TextEditingController();
  @override
  void dispose() {
    newPasswordControiller.dispose();
    super.dispose();
  }


  final user = FirebaseAuth.instance.currentUser;


  changePassword()  async{
    try{
      await user!.updatePassword(newPassword);
      FirebaseAuth.instance.signOut();
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage(),
      ),
      );
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.black87,
        content: Text("Your Password has been changed please Login Again. . ."),
      ),);
    }catch(error){
      print("Password not changed");
    }

  }
  @override
  Widget build(BuildContext context) {
    bool isHiddenPassword=true;
    return WillPopScope(
      onWillPop: ()=> _onBackButtonPressed(context),
      child: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/settings.png'),
                    fit: BoxFit.cover,
                  )),
              child: Center(
                child: SingleChildScrollView(
                  child: Form(
                    key: _FormKey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 50.0, top: 250.0 , right: 50.0),
                          child: TextFormField(
                              obscureText: isHiddenPassword,
                              controller: newPasswordControiller,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.lock),
                                  hintText: 'Enter New Password Here Password',
                                  suffixIcon: GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          isHiddenPassword!=isHiddenPassword;
                                        });
                                      },
                                      child: Icon(isHiddenPassword? Icons.visibility:Icons.visibility_off)),

                              ),
                          ),
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
                          child: Text("Save Changes"),
                          onPressed: () {
                            if(_FormKey.currentState!.validate()) {
                              setState(() {
                                newPassword = newPasswordControiller.text;
                              });
                              changePassword();

                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
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
