import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Corona_updates extends StatelessWidget {
  static BuildContext gridpasscontext;
  Items item1 = new Items(
    title: "Worldwide",
    img: "",
    toch: () {
      print("Toch 1");
//      var route = new MaterialPageRoute(
//        builder: (BuildContext)=>
//        new thingstobuy(),
//      );
//      Navigator.of(gridpasscontext).push(route);
    },
  );

  Items item2 = new Items(
    title: "Asia",
    img: "",
    toch: () {
//      var route = new MaterialPageRoute(
//        builder: (BuildContext)=>
//        new preventiontips(),
//      );
//      Navigator.of(gridpasscontext).push(route);
    },
  );
  Items item3 = new Items(
    title: "Philippines",
    img: "",
    toch: () {
//      var route = new MaterialPageRoute(
//        builder: (BuildContext)=>
//        new emergencyhotlines(),
//      );
//      Navigator.of(gridpasscontext).push(route);
    },
  );

  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3];
    return Flexible(
      child: GridView.count(
          childAspectRatio: 2.0,
          padding: EdgeInsets.only(left: 25, right: 25),
          crossAxisCount: 1,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Material(
                elevation: 8,
                color: Colors.blue,
                child: InkWell(
                  onTap: data.toch,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white, borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          data.img,
                          fit: BoxFit.fitHeight,height: 110,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          data.title,
                          style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ],
                    ),
                  ),
                )
            );
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