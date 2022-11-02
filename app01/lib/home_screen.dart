import'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
const HomeScreen({super.key});


static const colorBgAppBar = Colors.green;
static const colorTxtAppBar = Color(0xffffffff);
static const colorShadAppBar = Colors.amber;

@override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi App"),
        backgroundColor: colorBgAppBar,
        shadowColor: colorShadAppBar,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: colorTxtAppBar, fontSize: 30),
        leading: Padding(
          padding: const EdgeInsets.all(0.0),
          child:Image.asset(
            "images/qpeo.jpg",
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(144, 140, 0, 255),
      body: const Center(
          child: Text(
          "qtransa desde Home Screen",
          style: TextStyle(fontSize: 30, color: Colors.white, fontFamily: "Comic Sans" ),),
          
        ),
    );
  }
}