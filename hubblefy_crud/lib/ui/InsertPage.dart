import 'package:flutter/material.dart';
import 'package:hubblefy_crud/ui/HomePage.dart';
import 'package:path_provider/path_provider.dart';


import 'dart:convert';
import 'dart:io';

class InsertPage extends StatefulWidget {
  @override
  _InsertPageState createState() => _InsertPageState();
}

class _InsertPageState extends State<InsertPage> {


  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _depController = TextEditingController();
  final _acessController = TextEditingController();

  List _guestList = ["Felipe"];


  @override
  void initState() {
    super.initState();

    _readData().then((data){
      setState(() {
        _guestList = json.decode(data);
      });

    });
  }

  void _addList() {
    setState(() {
      Map<String, dynamic> newGuest = Map();


      newGuest["nome"] = _nomeController;
      newGuest["email"] = _emailController;
      newGuest["dep"] = _depController;
      newGuest["acess"] = _acessController;

      _nomeController.text = "";
      _emailController.text = "";
      _depController.text = "";
      _acessController.text = "";

      _guestList.add(newGuest);
      _saveData();
    });
  }

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
                        padding: EdgeInsets.fromLTRB(0.0, 60.0, 0.0, 30.0),
                        child: Image.asset(
                          "images/HubblefyLogo.png",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 30.0),
                        child: Text("Membros da Org",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black87, fontSize: 25.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 10.0),
                        child: Text(
                          "Chegou a hora de adicionar os primeiros membros da sua nova org:",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black54, fontSize: 18.0),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              TextField(
                                controller: _nomeController,
                                decoration: InputDecoration(
                                    labelText: "Nome",
                                    labelStyle: TextStyle(color: Colors.orange,
                                        fontSize: 15.0),
                                    border: OutlineInputBorder()
                                ),
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black),
                              ),
                              Divider(),
                              TextField(
                                controller: _emailController,
                                decoration: InputDecoration(
                                    labelText: "E-mail",
                                    labelStyle: TextStyle(color: Colors.orange,
                                        fontSize: 15.0),
                                    border: OutlineInputBorder()
                                ),
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black),
                              ),
                              Divider(),
                              TextField(
                                controller: _depController,
                                decoration: InputDecoration(
                                    labelText: "Departamento",
                                    labelStyle: TextStyle(color: Colors.orange,
                                        fontSize: 15.0),
                                    border: OutlineInputBorder()
                                ),
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black),
                              ),
                              Divider(),
                              TextField(
                                controller: _acessController,
                                decoration: InputDecoration(
                                    labelText: "Nivel de acesso",
                                    labelStyle: TextStyle(color: Colors.orange,
                                        fontSize: 15.0),
                                    border: OutlineInputBorder()
                                ),
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black),
                              ),
                              Divider(),
                              Container(
                                height: 50.0,
                                child: RaisedButton(
                                  onPressed: _addList,
                                  child: Text("Salvar",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15.0),
                                  ),
                                  color: Colors.green,
                                ),
                              ),
                              Container(
                                height: 50.0,
                                child: RaisedButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) => HomePage()));
                                  },
                                  child: Text("Cancelar",
                                    style: TextStyle(
                                        color: Colors.orange, fontSize: 15.0),
                                  ),
                                  color: Colors.transparent,
                                ),
                              ),



                            ],
                          )
                      )
                    ],
                  )
                ]
            )
        )
    );

  }
  Future<File> _getFile() async {
    final directory = await getApplicationDocumentsDirectory();
    return File("${directory.path}/data.json");
  }

  Future<File> _saveData() async{
    String data = jsonEncode(_guestList);
    final file = await _getFile();
    return file.writeAsString(data);
  }

  Future<String> _readData() async{
    try {
      final file = await _getFile();

      return file.readAsString();
    }catch (e) {
      return null;
    }
  }

}





