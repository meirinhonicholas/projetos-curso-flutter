import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Image.asset(
              "images/hubblefybg.jpg",
              fit: BoxFit.cover,
              height: 1000.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0,60.0,0.0,30.0),
                  child: Image.asset(
                    "images/HubblefyLogo.png",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0,0.0,0.0,30.0),
                  child: Text("Membros da Org",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.black87,fontSize: 25.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0,0.0,0.0,10.0),
                  child: Text("Chegou a hora de adicionar os primeiros membros da sua nova org:",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.black54,fontSize: 18.0),
                  ),
                ),

              ],
            )
          ],
        )
      ),

    );
  }
}
