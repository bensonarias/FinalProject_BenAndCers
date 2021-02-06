import 'package:final_project/config/palette.dart';
import 'package:flutter/material.dart';


class To_buy extends StatefulWidget {
  @override
  _To_buyState createState() => _To_buyState();
}


class _To_buyState extends State<To_buy> {
  List<String> title = new List<String>();
  List<bool> condition = new List<bool>();

  @override
  void initState() {
    // TODO: implement initState
    setState(() {
        title.add("first item");
        condition.add(false);

    });
  }

  void ItemChange(bool val,int index){
    setState(() {
      condition[index] = val;
    });
  }

  createAlertDialog(BuildContext context){
    TextEditingController custom_controller = TextEditingController();
    
    return showDialog(context: context,
    builder: (BuildContext context){
     return AlertDialog(
        title: Text("What to add another item on the checklist?"),
        content: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Add an item'),
          controller: custom_controller,
        ),
        actions: <Widget>[
          MaterialButton(
            elevation: 5.0,
            child: Text("Submit"),
            onPressed: (){
              Navigator.of(context).pop(custom_controller.text.toString());
            },
          )
        ],
      );
    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Palette.primaryColor,
    body: Container(
      margin: EdgeInsets.only(top: 15),
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),
                onPressed: (){
                  Navigator.pop(context);
                }),
          ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(icon: Icon(Icons.add_circle_outline,color: Colors.white,),
                onPressed: (){
                  createAlertDialog(context).then((onValue){
                    condition.add(false);
                    title.add('$onValue');
                  });
                }),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 32,vertical: 32),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Things Needed",
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
                            new ListView.builder(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                              itemCount: condition.length,
                              itemBuilder: (BuildContext context, int index) {
                                return new CheckboxListTile(
                                    value: condition[index],
                                    title: new Text(title[index]),
                                    controlAffinity: ListTileControlAffinity
                                        .leading,
                                    onChanged: (bool val) {
                                      ItemChange(val, index);
                                    }
                                );
                              })

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
            initialChildSize: 0.85,
            maxChildSize: 0.95,
            minChildSize: 0.85,
          ),
        ],
      ),
    ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              heroTag: null,
              onPressed: () {},
              child: Icon(Icons.check),
            ),
            FloatingActionButton(
              heroTag: null,
              onPressed: () {},
              child: Icon(Icons.add),
            )
          ],
        ),
      ),

    );
  }
}
