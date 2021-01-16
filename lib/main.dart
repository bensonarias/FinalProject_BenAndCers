import 'package:flutter/material.dart';
import 'package:final_project/preventiontips/Prepare.dart';
import 'package:final_project/preventiontips/To_do.dart';
import 'package:final_project/preventiontips/Symptoms.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:final_project/thingstobuy/to_buy.dart';
import 'package:final_project/thingstobuy/in_stock.dart';
import 'package:final_project/emergencyhotlines/contacts_pandemic.dart';
import 'package:final_project/emergencyhotlines/other_contacts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splash_screen()

        ,debugShowCheckedModeBanner: false);
  }
}

class Splash_screen extends StatefulWidget {
  @override
  _Splash_screenState createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      imageBackground: Image.asset('assets/image/LatestIconBenAndCers.png').image,
      loaderColor: Colors.blueAccent,
      photoSize: 150,
      navigateAfterSeconds: AgapApp(),
    );
  }
}

class AgapApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromRGBO(38, 81, 158, 1),
      body: MainBody(context),);
  }
}

class About extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromRGBO(38, 81, 158, 1),
      body: About_app(context),);
  }
}

About_app(BuildContext context){
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Align(
          alignment: Alignment.topLeft,
          child: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),
              onPressed: (){
                Navigator.pop(context);
              }),
        ),
        Image(image: AssetImage('assets/image/sampleTeamlogo2.png'),
          height: 180,
          width: 180,

        ),

        Container(
          height: 350,
          margin: EdgeInsets.symmetric(horizontal: 32),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
          ),
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("ABOUT",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.w900
                ),),
              Text("Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w900
                ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("DEVELOPERS",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w900
                    ),),
                  Image(image: AssetImage('assets/image/developerIcon.png'),
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
              Text("Benson Arias",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 23,
                    fontWeight: FontWeight.w900
                ),),
              Text("ariasru@students.national-u.edu.ph",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w900
                ),),
              Text("Cerceas Bulawan",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 23,
                    fontWeight: FontWeight.w900
                ),),
              Text("bulawancs@students.national-u.edu.ph \n",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w900
                ),),
              Text("CREDITS:",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.w900
                ),),
              Text("Icons made by Freepik and Flat Icons ('https://www.flaticon.com/authors/freepik' \n 'https://www.flaticon.com/authors/flat-icons')",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w900
                ),),
            ],
          ),
        )
      ],
    ),
  );
}
MainBody(BuildContext context){
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Align(
          alignment: Alignment.topRight,
          child: IconButton(icon: Icon(Icons.help,color: Colors.white,size: 40,),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => About()),
                );
              }),
        ),
        Image(image: AssetImage('assets/image/IconOnlyNew.png'),
          height: 300,
          alignment: Alignment.center,

        ),
        RaisedButton(
          onPressed: () {
              var route = new MaterialPageRoute(
                  builder: (BuildContext)=>
                  new thingstobuy(),
              );
              Navigator.of(context).push(route);
          },
          child: const Text('Things to buy', style: TextStyle(fontSize: 20)),
          color: Colors.blue,
          textColor: Colors.white,
          elevation: 5,),
        RaisedButton(
          onPressed: () {
            var route = new MaterialPageRoute(
              builder: (BuildContext)=>
              new preventiontips(),
            );
            Navigator.of(context).push(route);
          },
          child: const Text('Prevention tips', style: TextStyle(fontSize: 20)),
          color: Colors.blue,
          textColor: Colors.white,
          elevation: 5,),
        RaisedButton(
          onPressed: () {
            var route = new MaterialPageRoute(
              builder: (BuildContext)=>
              new emergencyhotlines(),
            );
            Navigator.of(context).push(route);
          },
          child: const Text('Emergency Hotlines', style: TextStyle(fontSize: 20)),
          color: Colors.blue,
          textColor: Colors.white,
          elevation: 5,),
      ],
    ),
  );
}

class preventiontips extends StatefulWidget{
  @override
  _preventiontipsState createState() => new _preventiontipsState();
}

class _preventiontipsState extends State<preventiontips>{
  var screens = [
    Prepare(),
    To_do(),
    Symptoms()
  ];
  int selected_tab=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromRGBO(38, 81, 158, 1),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected_tab,
        items: [
        BottomNavigationBarItem(
            icon: new Image.asset("assets/image/PreventionIcon.png",width: 50,height: 50,),
            label: 'Prepare'),
          BottomNavigationBarItem(
              icon: new Image.asset("assets/image/Ifmerongcovid.png",width: 50,height: 50,),
              label: 'To do'),
          BottomNavigationBarItem(
              icon: new Image.asset("assets/image/symptoms.png",width: 50,height: 50,),
              label: 'Symptoms'),
      ],
        onTap: (index){
          setState(() {
            selected_tab =index;
          });
        },
        showUnselectedLabels: true ,
        iconSize: 30,
    ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: screens[selected_tab],
    );

  }
}

class thingstobuy extends StatefulWidget {
  @override
  _thingstobuyState createState() => _thingstobuyState();
}

class _thingstobuyState extends State<thingstobuy> {
  var screens = [
    to_buy(),
    instock(),
  ];
  int selected_tab=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromRGBO(38, 81, 158, 1),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected_tab,
        items: [
          BottomNavigationBarItem(
              icon: new Image.asset("assets/image/add.png",width: 50,height: 50,),
              label: 'To buy'),
          BottomNavigationBarItem(
              icon: new Image.asset("assets/image/completed.png",width: 50,height: 50,),
              label: 'In stock'),
        ],
        onTap: (index){
          setState(() {
            selected_tab =index;
          });
        },
        showUnselectedLabels: true ,
        iconSize: 30,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: screens[selected_tab],
    );

  }
}

class emergencyhotlines extends StatefulWidget {
  @override
  _emergencyhotlinesState createState() => _emergencyhotlinesState();
}

class _emergencyhotlinesState extends State<emergencyhotlines> {
  var screens = [
    contacts(),
    other_contacts(),
  ];
  int selected_tab=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromRGBO(38, 81, 158, 1),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected_tab,
        items: [
          BottomNavigationBarItem(
              icon: new Image.asset("assets/image/phone.png",width: 50,height: 50,),
              label: 'Contacts for Pandemic'),
          BottomNavigationBarItem(
              icon: new Image.asset("assets/image/emergency-call.png",width: 50,height: 50,),
              label: 'Other Emergency Hotlines'),
        ],
        onTap: (index){
          setState(() {
            selected_tab =index;
          });
        },
        showUnselectedLabels: true ,
        iconSize: 30,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: screens[selected_tab],
    );

  }
}




