import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:logicz/main_sub/basic_gate_main.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [




            Padding(
              padding: const EdgeInsets.all(20.0),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.white30),
                    gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomCenter,
                        colors: [Colors.white60, Colors.white10]),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(40.0),
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'Sastha\nEngineering !',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'origin'),
                      ),
                    ),
                  ),
                ),
              ),
            ),



            const Divider(
              height: 0.5,
              color: Colors.white,
            ),



            Padding(
              padding: const EdgeInsets.only(
                  bottom: 30.0, left: 30, right: 30, top: 30),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.35,
                child: const FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    'Explore',
                    style: TextStyle(fontFamily: 'origin', color: Colors.white),
                  ),
                ),
              ),
            ),




            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const basic_gate_main()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.white,
                              blurRadius: 8,
                              blurStyle: BlurStyle.solid)
                        ],
                        color: Colors.yellowAccent),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 25, left: 25, right: 25),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Column(
                          children: [
                            Image.asset('assets/images/basic_gates.png',
                                width: 40),
                            const Padding(
                              padding: EdgeInsets.only(
                                  right: 10, left: 10, bottom: 10),
                              child: Text(
                                'Basic\nGates',
                                style: TextStyle(
                                    fontFamily: 'origin', color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.yellowAccent),
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'Basic\nGates',
                        style: TextStyle(
                            fontFamily: 'origin', color: Colors.black),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
