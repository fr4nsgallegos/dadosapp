import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: DadosPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class DadosPage extends StatefulWidget {
  const DadosPage({super.key});

  @override
  State<DadosPage> createState() => _DadosPageState();
}

class _DadosPageState extends State<DadosPage> {
  int n = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("DiceApp"),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onDoubleTap: () {
                  n = 1;
                  setState(() {});
                },
                onTap: () {
                  n = Random().nextInt(6) + 1;
                  setState(() {});
                },
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    // PRIMERA FORMA DE APLICAR BORDE CIRCULAR A CONTAINER
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    //FORMA DE APLICAR CIRCULAR BORDER A CONTAINER
                    // shape: BoxShape.circle,
                  ),
                  width: 200,
                  height: 200,
                  child: Image.asset("assets/images/dice$n.png"),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              ElevatedButton(
                onPressed: () {
                  n = Random().nextInt(6) + 1;
                  print(n);
                  setState(() {});
                },
                child: Text("Random"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
