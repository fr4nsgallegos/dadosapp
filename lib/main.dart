import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num = 100;
  int x = 0;
  int y = 0;
  void cambiarNumero() {
    // num += 100;
    num = num + 100;
  }

  void sumar2() {
    print("------------------");
    x += 2;
    setState(() {});
    // print(variable);
  }

  int sumar1(int variable) {
    return variable += 1;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              x = 0;
            });
          },
          child: Text("HOLA"),
        ),
        appBar: AppBar(),
        body: Column(
          children: [
            Center(
              child: Text(
                num.toString(),
                style: TextStyle(fontSize: 150),
              ),
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  cambiarNumero();
                  setState(() {});
                },
                child: Text("cambiar a 200"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "X= ${x.toString()}",
                  style: TextStyle(fontSize: 50),
                ),
                Text(
                  "Y= ${y.toString()}",
                  style: TextStyle(fontSize: 50),
                )
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  x = sumar1(x);
                });
                print(x);
                // setState(() {});
              },
              child: Text("Sumar a x"),
            ),
            ElevatedButton(
              onPressed: () {
                y = sumar1(y);
                setState(() {});
              },
              child: Text("Sumar a y"),
            ),
            ElevatedButton(
              onPressed: () {
                sumar2();
                // sumar2(y);
                setState(() {});
              },
              child: Text("Sumar a ambos"),
            )

            // Expanded(
            //   child: Image.asset(
            //     "assets/images/imagen1.jpeg",
            //     fit: BoxFit.contain,
            //   ),
            // ),
            // CircleAvatar(
            //   radius: 100,
            //   backgroundImage: AssetImage("assets/images/imagen1.jpeg"),
            // ),
          ],
        ),
      ),
    );
  }
}
