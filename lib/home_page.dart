import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String data =
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software.";

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Explore with us",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:const EdgeInsets.all(16.0),
            child: Container(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assest/images/place2.jpg",
                      width: double.infinity,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  setContent(),
                  setbuttons(),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      data,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: GoogleFonts.lato().fontFamily,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}

class setContent extends StatelessWidget {
  const setContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Row(children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Oeschinen Lake Campground",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Kindersteg,Switzerland",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          SizedBox(
            width: 90,
          ),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text(
            "41",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          )
        ]));
  }
}

class setbuttons extends StatefulWidget {
  const setbuttons({Key? key}) : super(key: key);

  @override
  _setbuttonsState createState() => _setbuttonsState();
}

class _setbuttonsState extends State<setbuttons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(children: [
          IconButton(
            icon: Icon(
              Icons.phone,
              color: Colors.blue,
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return SimpleDialog(
                      title: Text("Select one option"),
                      children: [
                        SimpleDialogOption(
                          child: Text("yes"),
                          onPressed: () {},
                        ),
                        SimpleDialogOption(
                          child: Text("No"),
                          onPressed: () {},
                        )
                      ],
                    );
                  });
            },
          ),
          Text("CALL", style: TextStyle(color: Colors.blue))
        ]),
        Column(children: [
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Alert Message"),
                      content: Text("Are you sure?"),
                      actions: [
                        TextButton(
                            onPressed: () => Navigator.pop(context, 'Approve'),
                            child: Text("Approve"))
                      ],
                    );
                  });
            },
            icon: Icon(
              Icons.near_me,
              color: Colors.blue,
            ),
          ),
          Text("ROUTE",
              style: TextStyle(
                color: Colors.blue,
              ))
        ]),
        Column(children: [
          IconButton(
              icon: Icon(Icons.share, color: Colors.blue),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            leading: Icon(Icons.phone),
                            title: Text(
                              "Call",
                            ),
                            onTap: () {},
                          ),
                          ListTile(
                            leading: Icon(Icons.photo),
                            title: Text("Gallery"),
                            onTap: () {},
                          ),
                          ListTile(
                            leading: Icon(Icons.face),
                            title: Text(
                              "Video Chat",
                            ),
                            onTap: () {},
                          )
                        ],
                      );
                    });
              }),
          Text(
            "SHARE",
            style: TextStyle(
              color: Colors.blue,
            ),
          )
        ]),
      ],
    );
  }
}
