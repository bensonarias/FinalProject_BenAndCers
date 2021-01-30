import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:final_project/preventiontips/Prepare.dart';
import 'package:final_project/preventiontips/To_do.dart';
import 'package:final_project/preventiontips/Symptoms.dart';
import 'package:final_project/thingstobuy/to_buy.dart';
import 'package:final_project/thingstobuy/in_stock.dart';
import 'package:final_project/emergencyhotlines/contacts_pandemic.dart';
import 'package:final_project/emergencyhotlines/other_contacts.dart';

class GridDashboard extends StatelessWidget {
  static BuildContext gridpasscontext;
  Items item1 = new Items(
      title: "Things to Buy",
      img: "assets/image/maintobuy.png",
      toch: () {
        var route = new MaterialPageRoute(
          builder: (BuildContext)=>
          new thingstobuy(),
        );
          Navigator.of(gridpasscontext).push(route);
      },
  );

  Items item2 = new Items(
    title: "Prevention Tips",
    img: "assets/image/mainprevention2.png",
      toch: () {
        var route = new MaterialPageRoute(
              builder: (BuildContext)=>
              new preventiontips(),
            );
            Navigator.of(gridpasscontext).push(route);
      },
  );
  Items item3 = new Items(
    title: "Emergency",
    img: "assets/image/help.png",
      toch: () {
        var route = new MaterialPageRoute(
              builder: (BuildContext)=>
              new emergencyhotlines(),
            );
            Navigator.of(gridpasscontext).push(route);
          },
  );
  Items item4 = new Items(
    title: "About",
    img: "assets/image/info.png",
    toch:() {
      print("HERE at item 4");
    },
  );

  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4];
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Material(
              elevation: 5,
              child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Material(
              child: InkWell(
                  onTap: data.toch,
                child: Container(
                  child: ClipRRect(
                    child:  Image.asset(
                      data.img,
                      width: 100,
                      fit: BoxFit.fitWidth,
                    ),
                  ),),
              )
            ),
                  SizedBox(
                    height: 14,
                  ),
                  Material(
                    child: InkWell(
                      onTap: data.toch,
                      child: Container(
                        child: Text(
                          data.title,
                          style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ));
          }).toList()),
    );
  }
}

class Items {
  String title;
  String img;
  GestureTapCallback toch;
  Items({this.title,this.img,this.toch});

}
class thingstobuy extends StatefulWidget {
  @override
  _thingstobuyState createState() => _thingstobuyState();
}

class _thingstobuyState extends State<thingstobuy> {
  var screens = [
    To_buy(),
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