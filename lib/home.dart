//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'mainpage.dart';
import 'settings.dart';
import 'help.dart';
import 'headerdrawer.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage=DrawerSections.mainpage;
  @override
  Widget build(BuildContext context) {
    var container;
    if(currentPage==DrawerSections.settings){
      container=Settings();
    }
    if(currentPage==DrawerSections.home){
      container=MainPage();
    }
    if(currentPage==DrawerSections.help){
      container=Help();
    }if(currentPage==DrawerSections.mainpage){
      container=MainPage();
    }
    return Scaffold(
        //backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        //title: Text("Waste Management System", style: TextStyle,),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList(){
    return Container(
      padding: EdgeInsets.only(top: 15.0),
      child: Column(
        children: [
          MenuItem(1,"Home",Icons.home,currentPage==DrawerSections.home?true: false),
          MenuItem(2,"Setting",Icons.settings_accessibility_outlined,currentPage==DrawerSections.settings?true: false),
          MenuItem(3,"Help",Icons.help,currentPage==DrawerSections.help?true: false),
        ],
      ),
    );
  }

  Widget MenuItem(int id,String title,IconData icon,bool selected){
    return Material(
      child: InkWell(
        onTap: (){
          Navigator.pop(context);
          setState(() {
            if(id==1){
              currentPage=DrawerSections.home;
            }
            if(id==2){
              currentPage=DrawerSections.settings;
            }
            if(id==3){
              currentPage=DrawerSections.help;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(child: Icon(icon, size: 20.0,color: Colors.black87,),),
              Expanded(
                flex: 1,
                child: Text(title, style: TextStyle(color: Colors.black87, fontSize: 18.0,fontWeight: FontWeight. bold),),),
            ],
          ),
        ),
      ),
    );
  }
}
enum DrawerSections{
  settings,
  help,
  home,
  mainpage,
}
