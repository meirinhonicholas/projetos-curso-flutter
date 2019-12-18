import 'package:flutter/material.dart';
import 'package:hubblefy_crud/ui/InsertPage.dart';
import 'package:hubblefy_crud/ui/ListPage.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                padding: EdgeInsets.fromLTRB(0.0,90.0,0.0,30.0),
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
                padding: EdgeInsets.fromLTRB(10.0,0.0,0.0,0.0),
                child: Text("Chegou a hora de adicionar os primeiros membros da sua nova org:",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.black54,fontSize: 15.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0,30.0,10.0,20.0),
                child: Container(
                  height: 70.0,
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => InsertPage()));
                    },
                    child: Text("Adicionar membro",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),),
                    color: Colors.orange,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0,0.0,10.0,30.0),
                child: Container(
                  height: 70.0,
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ListPage()));
                    },
                    child: Text("Ir para org",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),),
                    color: Colors.green,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
