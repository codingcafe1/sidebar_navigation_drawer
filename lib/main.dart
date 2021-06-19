import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttersidebar_app/Home.dart';
import 'package:fluttersidebar_app/Profile.dart';
import 'package:fluttersidebar_app/Settings.dart';

void main() =>
  runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int index =0;
  List<Widget> list = [
    Home(),
    Profile(),
    Settings(),

  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Side Bar'),
        ),
        body: list[index],
        drawer: MyDrawer(),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {

  final Function onTap;

  MyDrawer({
    this.onTap
});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.8,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: 70,
                      height: 70,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('https://cdn.fastly.picmonkey.com/contentful/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=800&q=70'),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text(
                      'Mr.John',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 2,),
                    Text(
                      'John300@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: ()=>onTap(context,0),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: ()=>onTap(context,0),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
              onTap: ()=>onTap(context,0),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: ()=>onTap(context,0),
            ),
            Divider(height: 1,),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: ()=>onTap(context,0),
            ),
          ],
        ),
      ),
    );
  }
}





