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
                height: 50,
              ),
              Container(
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

                // child: Image.asset("assets/images/dice1.png"),
              ),
              ElevatedButton(onPressed: () {}, child: Text("Shuffle"))
            ],
          ),
        ),
      ),
    );
  }
}
