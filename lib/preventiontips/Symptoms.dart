import 'package:flutter/material.dart';

class Symptoms extends StatefulWidget {
  @override
  _SymptomsState createState() => _SymptomsState();
}

class _SymptomsState extends State<Symptoms> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,), onPressed: (){}),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 32,vertical: 32),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Check symptoms if \n you have virus",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),)
                  ],
                )
              ],
            ),
          ),
          DraggableScrollableSheet(
            builder: (context,scrollControler){
              return Container(
                child: SingleChildScrollView(
                  controller: scrollControler,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            for(var i=0;i<15;i++)
                              ListTile(
                                leading: Icon(Icons.ac_unit),
                                title: Text("Lorem ipsum"),
                                subtitle: Text("Lorem ipsum"),
                                trailing: Icon(Icons.help),
                              ),


                          ],
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 32),
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(243, 245, 248, 1),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40))
                ),
              );
            },
            initialChildSize: 0.80,
            maxChildSize: 0.95,
            minChildSize: 0.80,
          ),
        ],
      ),
    );
  }
}

