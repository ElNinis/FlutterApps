// home_Screen.dart <-Snake classe.
//homeScreen.dart <-Camel clsse.

import 'dart:html';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const colorBgAppBar = Color.fromARGB(255, 157, 255, 0);
  static const colorTxtAppBar = Color.fromARGB(255, 0, 0, 0);
  static const colorShadAppBar = Color.fromARGB(255, 0, 94, 39);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int contador = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi app"),
        backgroundColor: HomeScreen.colorBgAppBar,
        shadowColor: HomeScreen.colorShadAppBar,
        centerTitle: false,
        titleTextStyle:
            const TextStyle(color: HomeScreen.colorTxtAppBar, fontSize: 30),
        leading: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Image.asset(
            "images/qpeo.jpg",
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 173, 253, 173),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Veces que has hecho click: ",
                style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: "Comic Sans"),
              ),
              Text(
                contador.toString(),
                style: const TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: "Comic Sans"),
              ),
            ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              contador++;
              setState(() {});
              // print("Hola cracks");
            }),
        SizedBox(
          height: 10,
        ),
        FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              contador--;
              setState(() {});
              // print("Hola cracks");
            }),
      ]),
    );
  }
}