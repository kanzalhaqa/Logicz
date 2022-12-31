import 'dart:ui';

import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class basic_gate_main extends StatefulWidget {
  const basic_gate_main({Key? key}) : super(key: key);

  @override
  State<basic_gate_main> createState() => _basic_gate_mainState();
}

class _basic_gate_mainState extends State<basic_gate_main> {
  bool isNOTPressed = true;
  bool isANDaPressed = true;
  bool isANDbPressed = true;
  bool AND_Result = false;
  bool isNANDaPressed = false;
  bool isNANDbPressed = false;
  bool NAND_Result = true;
  bool isORaPressed = false;
  bool isORbPressed = false;
  bool OR_Result = false;
  bool isNORaPressed = true;
  bool isNORbPressed = true;
  bool NOR_Result = false;
  bool isXORaPressed = false;
  bool isXORbPressed = false;
  bool XOR_Result = true;
  bool isXNORaPressed = true;
  bool isXNORbPressed = true;
  bool XNOR_Result = false;

  @override
  Widget build(BuildContext context) {
    Offset distance = isNOTPressed ? const Offset(3, 3) : const Offset(3, 3);
    double blur = isNOTPressed ? 15 : 15;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: GlowingOverscrollIndicator(
          color: Colors.yellow,
          axisDirection: AxisDirection.down,
          child: ListView(
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
                            colors: [Colors.yellow, Colors.yellowAccent]),
                        borderRadius: BorderRadius.circular(25)),
                    child: const Padding(
                      padding: EdgeInsets.all(40.0),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          'Basic Gates !',
                          style: TextStyle(
                              color: Colors.black, fontFamily: 'origin'),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // NOT GATE

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 30),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.25,
                          child: const FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              '1. NOT',
                              style: TextStyle(
                                  fontFamily: 'origin', color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 30),
                        child: GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) => NOT_tt);
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.1,
                            height: MediaQuery.of(context).size.width * 0.1,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
                                    offset: distance,
                                    color: Colors.white,
                                    blurRadius: blur,
                                  ),
                                  BoxShadow(
                                    blurRadius: blur,
                                    offset: -distance,
                                    color: Colors.white30,
                                  ),
                                ],
                                color: Colors.black),
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: FittedBox(
                                  fit: BoxFit.fitHeight,
                                  child: Text('TT',
                                      style: TextStyle(
                                          color: Colors.yellow,
                                          fontFamily: 'origin'))),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () =>
                            setState(() => isNOTPressed = !isNOTPressed),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: MediaQuery.of(context).size.width * 0.25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: [
                                BoxShadow(
                                    offset: distance,
                                    color: Colors.white,
                                    blurRadius: blur,
                                    inset: isNOTPressed),
                                BoxShadow(
                                  blurRadius: blur,
                                  offset: -distance,
                                  color: Colors.white30,
                                  inset: isNOTPressed,
                                ),
                              ],
                              color: Colors.black),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: FittedBox(
                                fit: BoxFit.fitHeight,
                                child: isNOTPressed
                                    ? const Text('0',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontFamily: 'origin'))
                                    : const Text('1',
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: 'origin'))),
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/images/NOT.png',
                        width: MediaQuery.of(context).size.width * 0.4,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                  offset: distance,
                                  color: Colors.white,
                                  blurRadius: blur,
                                  inset: !isNOTPressed),
                              BoxShadow(
                                blurRadius: blur,
                                offset: -distance,
                                color: Colors.white30,
                                inset: !isNOTPressed,
                              ),
                            ],
                            color: Colors.black),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: FittedBox(
                              fit: BoxFit.fitHeight,
                              child: !isNOTPressed
                                  ? const Text('0',
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontFamily: 'origin'))
                                  : const Text('1',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontFamily: 'origin'))),
                        ),
                      ),
                    ],
                  ),

                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Divider(
                      height: 0.5,
                      color: Colors.white,
                    ),
                  ),

                  //AND GATE

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 10),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.25,
                          child: const FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              '2. AND',
                              style: TextStyle(
                                  fontFamily: 'origin', color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 30),
                        child: GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) => AND_tt);
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.1,
                            height: MediaQuery.of(context).size.width * 0.1,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
                                    offset: distance,
                                    color: Colors.white,
                                    blurRadius: blur,
                                  ),
                                  BoxShadow(
                                    blurRadius: blur,
                                    offset: -distance,
                                    color: Colors.white30,
                                  ),
                                ],
                                color: Colors.black),
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: FittedBox(
                                  fit: BoxFit.fitHeight,
                                  child: Text('TT',
                                      style: TextStyle(
                                          color: Colors.yellow,
                                          fontFamily: 'origin'))),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () => setState(() {
                              isANDaPressed = !isANDaPressed;
                              if (isANDaPressed == true &&
                                  isANDbPressed == true) {
                                AND_Result = false;
                              } else if (isANDaPressed == !isANDbPressed) {
                                AND_Result = false;
                              } else if (!isANDaPressed == isANDbPressed) {
                                AND_Result = false;
                              } else if (isANDaPressed == false &&
                                  isANDbPressed == false) {
                                AND_Result = true;
                              }
                            }),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: MediaQuery.of(context).size.width * 0.25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: distance,
                                        color: Colors.white,
                                        blurRadius: blur,
                                        inset: isANDaPressed),
                                    BoxShadow(
                                      blurRadius: blur,
                                      offset: -distance,
                                      color: Colors.white30,
                                      inset: isANDaPressed,
                                    ),
                                  ],
                                  color: Colors.black),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FittedBox(
                                    fit: BoxFit.fitHeight,
                                    child: isANDaPressed
                                        ? const Text('0',
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontFamily: 'origin'))
                                        : const Text('1',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontFamily: 'origin'))),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.15,
                          ),
                          GestureDetector(
                            onTap: () => setState(() {
                              isANDbPressed = !isANDbPressed;
                              if (isANDaPressed == true &&
                                  isANDbPressed == true) {
                                AND_Result = false;
                              } else if (isANDaPressed == !isANDbPressed) {
                                AND_Result = false;
                              } else if (!isANDaPressed == isANDbPressed) {
                                AND_Result = false;
                              } else if (isANDaPressed == false &&
                                  isANDbPressed == false) {
                                AND_Result = true;
                              }
                            }),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: MediaQuery.of(context).size.width * 0.25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: distance,
                                        color: Colors.white,
                                        blurRadius: blur,
                                        inset: isANDbPressed),
                                    BoxShadow(
                                      blurRadius: blur,
                                      offset: -distance,
                                      color: Colors.white30,
                                      inset: isANDbPressed,
                                    ),
                                  ],
                                  color: Colors.black),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FittedBox(
                                    fit: BoxFit.fitHeight,
                                    child: isANDbPressed
                                        ? const Text('0',
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontFamily: 'origin'))
                                        : const Text('1',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontFamily: 'origin'))),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/images/AND.png',
                        width: MediaQuery.of(context).size.width * 0.4,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                  offset: distance,
                                  color: Colors.white,
                                  blurRadius: blur,
                                  inset: !AND_Result),
                              BoxShadow(
                                blurRadius: blur,
                                offset: -distance,
                                color: Colors.white30,
                                inset: !AND_Result,
                              ),
                            ],
                            color: Colors.black),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: FittedBox(
                              fit: BoxFit.fitHeight,
                              child: !AND_Result
                                  ? const Text('0',
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontFamily: 'origin'))
                                  : const Text('1',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontFamily: 'origin'))),
                        ),
                      ),
                    ],
                  ),

                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Divider(
                      height: 0.5,
                      color: Colors.white,
                    ),
                  ),

                  //NAND GATE

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 10),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.30,
                          child: const FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              '3. NAND',
                              style: TextStyle(
                                  fontFamily: 'origin', color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 30),
                        child: GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) => NAND_tt);
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.1,
                            height: MediaQuery.of(context).size.width * 0.1,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
                                    offset: distance,
                                    color: Colors.white,
                                    blurRadius: blur,
                                  ),
                                  BoxShadow(
                                    blurRadius: blur,
                                    offset: -distance,
                                    color: Colors.white30,
                                  ),
                                ],
                                color: Colors.black),
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: FittedBox(
                                  fit: BoxFit.fitHeight,
                                  child: Text('TT',
                                      style: TextStyle(
                                          color: Colors.yellow,
                                          fontFamily: 'origin'))),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () => setState(() {
                              isNANDaPressed = !isNANDaPressed;
                              if (isNANDaPressed == true &&
                                  isNANDbPressed == true) {
                                NAND_Result = false;
                              } else if (isNANDaPressed == !isNANDbPressed) {
                                NAND_Result = false;
                              } else if (!isNANDaPressed == isNANDbPressed) {
                                NAND_Result = false;
                              } else if (isNANDaPressed == false &&
                                  isNANDbPressed == false) {
                                NAND_Result = true;
                              }
                            }),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: MediaQuery.of(context).size.width * 0.25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: distance,
                                        color: Colors.white,
                                        blurRadius: blur,
                                        inset: isNANDaPressed),
                                    BoxShadow(
                                      blurRadius: blur,
                                      offset: -distance,
                                      color: Colors.white30,
                                      inset: isNANDaPressed,
                                    ),
                                  ],
                                  color: Colors.black),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FittedBox(
                                    fit: BoxFit.fitHeight,
                                    child: isNANDaPressed
                                        ? const Text('0',
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontFamily: 'origin'))
                                        : const Text('1',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontFamily: 'origin'))),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.15,
                          ),
                          GestureDetector(
                            onTap: () => setState(() {
                              isNANDbPressed = !isNANDbPressed;
                              if (isNANDaPressed == true &&
                                  isNANDbPressed == true) {
                                NAND_Result = false;
                              } else if (isNANDaPressed == !isNANDbPressed) {
                                NAND_Result = false;
                              } else if (!isNANDaPressed == isNANDbPressed) {
                                NAND_Result = false;
                              } else if (isNANDaPressed == false &&
                                  isNANDbPressed == false) {
                                NAND_Result = true;
                              }
                            }),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: MediaQuery.of(context).size.width * 0.25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: distance,
                                        color: Colors.white,
                                        blurRadius: blur,
                                        inset: isNANDbPressed),
                                    BoxShadow(
                                      blurRadius: blur,
                                      offset: -distance,
                                      color: Colors.white30,
                                      inset: isNANDbPressed,
                                    ),
                                  ],
                                  color: Colors.black),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FittedBox(
                                    fit: BoxFit.fitHeight,
                                    child: isNANDbPressed
                                        ? const Text('0',
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontFamily: 'origin'))
                                        : const Text('1',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontFamily: 'origin'))),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/images/NAND.png',
                        width: MediaQuery.of(context).size.width * 0.4,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                  offset: distance,
                                  color: Colors.white,
                                  blurRadius: blur,
                                  inset: !NAND_Result),
                              BoxShadow(
                                blurRadius: blur,
                                offset: -distance,
                                color: Colors.white30,
                                inset: !NAND_Result,
                              ),
                            ],
                            color: Colors.black),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: FittedBox(
                              fit: BoxFit.fitHeight,
                              child: NAND_Result
                                  ? const Text('0',
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontFamily: 'origin'))
                                  : const Text('1',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontFamily: 'origin'))),
                        ),
                      ),
                    ],
                  ),

                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Divider(
                      height: 0.5,
                      color: Colors.white,
                    ),
                  ),

                  //OR GATE

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 10),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.20,
                          child: const FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              '4. OR',
                              style: TextStyle(
                                  fontFamily: 'origin', color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 30),
                        child: GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) => OR_tt);
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.1,
                            height: MediaQuery.of(context).size.width * 0.1,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
                                    offset: distance,
                                    color: Colors.white,
                                    blurRadius: blur,
                                  ),
                                  BoxShadow(
                                    blurRadius: blur,
                                    offset: -distance,
                                    color: Colors.white30,
                                  ),
                                ],
                                color: Colors.black),
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: FittedBox(
                                  fit: BoxFit.fitHeight,
                                  child: Text('TT',
                                      style: TextStyle(
                                          color: Colors.yellow,
                                          fontFamily: 'origin'))),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () => setState(() {
                              isORaPressed = !isORaPressed;
                              if (isORaPressed == true &&
                                  isORbPressed == true) {
                                OR_Result = true;
                              } else if (isORaPressed == false &&
                                  isORbPressed == true) {
                                OR_Result = false;
                              } else if (isORaPressed == true &&
                                  isORbPressed == false) {
                                OR_Result = false;
                              } else if (isORaPressed == false &&
                                  isORbPressed == false) {
                                OR_Result = false;
                              }
                            }),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: MediaQuery.of(context).size.width * 0.25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: distance,
                                        color: Colors.white,
                                        blurRadius: blur,
                                        inset: isORaPressed),
                                    BoxShadow(
                                      blurRadius: blur,
                                      offset: -distance,
                                      color: Colors.white30,
                                      inset: isORaPressed,
                                    ),
                                  ],
                                  color: Colors.black),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FittedBox(
                                    fit: BoxFit.fitHeight,
                                    child: isORaPressed
                                        ? const Text('0',
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontFamily: 'origin'))
                                        : const Text('1',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontFamily: 'origin'))),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.15,
                          ),
                          GestureDetector(
                            onTap: () => setState(() {
                              isORbPressed = !isORbPressed;
                              if (isORaPressed == true &&
                                  isORbPressed == true) {
                                OR_Result = true;
                              } else if (isORaPressed == false &&
                                  isORbPressed == true) {
                                OR_Result = false;
                              } else if (isORaPressed == true &&
                                  isORbPressed == false) {
                                OR_Result = false;
                              } else if (isORaPressed == false &&
                                  isORbPressed == false) {
                                OR_Result = false;
                              }
                            }),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: MediaQuery.of(context).size.width * 0.25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: distance,
                                        color: Colors.white,
                                        blurRadius: blur,
                                        inset: isORbPressed),
                                    BoxShadow(
                                      blurRadius: blur,
                                      offset: -distance,
                                      color: Colors.white30,
                                      inset: isORbPressed,
                                    ),
                                  ],
                                  color: Colors.black),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FittedBox(
                                    fit: BoxFit.fitHeight,
                                    child: isORbPressed
                                        ? const Text('0',
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontFamily: 'origin'))
                                        : const Text('1',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontFamily: 'origin'))),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/images/OR.png',
                        width: MediaQuery.of(context).size.width * 0.4,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                  offset: distance,
                                  color: Colors.white,
                                  blurRadius: blur,
                                  inset: OR_Result),
                              BoxShadow(
                                blurRadius: blur,
                                offset: -distance,
                                color: Colors.white30,
                                inset: OR_Result,
                              ),
                            ],
                            color: Colors.black),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: FittedBox(
                              fit: BoxFit.fitHeight,
                              child: OR_Result
                                  ? const Text('0',
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontFamily: 'origin'))
                                  : const Text('1',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontFamily: 'origin'))),
                        ),
                      ),
                    ],
                  ),

                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Divider(
                      height: 0.5,
                      color: Colors.white,
                    ),
                  ),

                  //NOR GATE

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 10),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.25,
                          child: const FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              '5. NOR',
                              style: TextStyle(
                                  fontFamily: 'origin', color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 30),
                        child: GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) => NOR_tt);
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.1,
                            height: MediaQuery.of(context).size.width * 0.1,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
                                    offset: distance,
                                    color: Colors.white,
                                    blurRadius: blur,
                                  ),
                                  BoxShadow(
                                    blurRadius: blur,
                                    offset: -distance,
                                    color: Colors.white30,
                                  ),
                                ],
                                color: Colors.black),
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: FittedBox(
                                  fit: BoxFit.fitHeight,
                                  child: Text('TT',
                                      style: TextStyle(
                                          color: Colors.yellow,
                                          fontFamily: 'origin'))),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () => setState(() {
                              isNORaPressed = !isNORaPressed;
                              if (isNORaPressed == true &&
                                  isNORbPressed == true) {
                                NOR_Result = false;
                              } else if (isNORaPressed == false &&
                                  isNORbPressed == true) {
                                NOR_Result = true;
                              } else if (isNORaPressed == true &&
                                  isNORbPressed == false) {
                                NOR_Result = true;
                              } else if (isNORaPressed == false &&
                                  isNORbPressed == false) {
                                NOR_Result = true;
                              }
                            }),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: MediaQuery.of(context).size.width * 0.25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: distance,
                                        color: Colors.white,
                                        blurRadius: blur,
                                        inset: isNORaPressed),
                                    BoxShadow(
                                      blurRadius: blur,
                                      offset: -distance,
                                      color: Colors.white30,
                                      inset: isNORaPressed,
                                    ),
                                  ],
                                  color: Colors.black),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FittedBox(
                                    fit: BoxFit.fitHeight,
                                    child: isNORaPressed
                                        ? const Text('0',
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontFamily: 'origin'))
                                        : const Text('1',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontFamily: 'origin'))),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.15,
                          ),
                          GestureDetector(
                            onTap: () => setState(() {
                              isNORbPressed = !isNORbPressed;
                              if (isNORaPressed == true &&
                                  isNORbPressed == true) {
                                NOR_Result = false;
                              } else if (isNORaPressed == false &&
                                  isNORbPressed == true) {
                                NOR_Result = true;
                              } else if (isNORaPressed == true &&
                                  isNORbPressed == false) {
                                NOR_Result = true;
                              } else if (isNORaPressed == false &&
                                  isNORbPressed == false) {
                                NOR_Result = true;
                              }
                            }),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: MediaQuery.of(context).size.width * 0.25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: distance,
                                        color: Colors.white,
                                        blurRadius: blur,
                                        inset: isNORbPressed),
                                    BoxShadow(
                                      blurRadius: blur,
                                      offset: -distance,
                                      color: Colors.white30,
                                      inset: isNORbPressed,
                                    ),
                                  ],
                                  color: Colors.black),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FittedBox(
                                    fit: BoxFit.fitHeight,
                                    child: isNORbPressed
                                        ? const Text('0',
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontFamily: 'origin'))
                                        : const Text('1',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontFamily: 'origin'))),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/images/NOR.png',
                        width: MediaQuery.of(context).size.width * 0.4,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                  offset: distance,
                                  color: Colors.white,
                                  blurRadius: blur,
                                  inset: NOR_Result),
                              BoxShadow(
                                blurRadius: blur,
                                offset: -distance,
                                color: Colors.white30,
                                inset: NOR_Result,
                              ),
                            ],
                            color: Colors.black),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: FittedBox(
                              fit: BoxFit.fitHeight,
                              child: NOR_Result
                                  ? const Text('0',
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontFamily: 'origin'))
                                  : const Text('1',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontFamily: 'origin'))),
                        ),
                      ),
                    ],
                  ),

                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Divider(
                      height: 0.5,
                      color: Colors.white,
                    ),
                  ),

                  //XOR GATE

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 10),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.25,
                          child: const FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              '6. XOR',
                              style: TextStyle(
                                  fontFamily: 'origin', color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 30),
                        child: GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) => XOR_tt);
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.1,
                            height: MediaQuery.of(context).size.width * 0.1,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
                                    offset: distance,
                                    color: Colors.white,
                                    blurRadius: blur,
                                  ),
                                  BoxShadow(
                                    blurRadius: blur,
                                    offset: -distance,
                                    color: Colors.white30,
                                  ),
                                ],
                                color: Colors.black),
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: FittedBox(
                                  fit: BoxFit.fitHeight,
                                  child: Text('TT',
                                      style: TextStyle(
                                          color: Colors.yellow,
                                          fontFamily: 'origin'))),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () => setState(() {
                              isXORaPressed = !isXORaPressed;
                              if (isXORaPressed == true &&
                                  isXORbPressed == true) {
                                XOR_Result = true;
                              } else if (isXORaPressed == false &&
                                  isXORbPressed == true) {
                                XOR_Result = false;
                              } else if (isXORaPressed == true &&
                                  isXORbPressed == false) {
                                XOR_Result = false;
                              } else if (isXORaPressed == false &&
                                  isXORbPressed == false) {
                                XOR_Result = true;
                              }
                            }),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: MediaQuery.of(context).size.width * 0.25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: distance,
                                        color: Colors.white,
                                        blurRadius: blur,
                                        inset: isXORaPressed),
                                    BoxShadow(
                                      blurRadius: blur,
                                      offset: -distance,
                                      color: Colors.white30,
                                      inset: isXORaPressed,
                                    ),
                                  ],
                                  color: Colors.black),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FittedBox(
                                    fit: BoxFit.fitHeight,
                                    child: isXORaPressed
                                        ? const Text('0',
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontFamily: 'origin'))
                                        : const Text('1',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontFamily: 'origin'))),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.15,
                          ),
                          GestureDetector(
                            onTap: () => setState(() {
                              isXORbPressed = !isXORbPressed;
                              if (isXORaPressed == true &&
                                  isXORbPressed == true) {
                                XOR_Result = true;
                              } else if (isXORaPressed == false &&
                                  isXORbPressed == true) {
                                XOR_Result = false;
                              } else if (isXORaPressed == true &&
                                  isXORbPressed == false) {
                                XOR_Result = false;
                              } else if (isXORaPressed == false &&
                                  isXORbPressed == false) {
                                XOR_Result = true;
                              }
                            }),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: MediaQuery.of(context).size.width * 0.25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: distance,
                                        color: Colors.white,
                                        blurRadius: blur,
                                        inset: isXORbPressed),
                                    BoxShadow(
                                      blurRadius: blur,
                                      offset: -distance,
                                      color: Colors.white30,
                                      inset: isXORbPressed,
                                    ),
                                  ],
                                  color: Colors.black),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FittedBox(
                                    fit: BoxFit.fitHeight,
                                    child: isXORbPressed
                                        ? const Text('0',
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontFamily: 'origin'))
                                        : const Text('1',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontFamily: 'origin'))),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/images/XOR.png',
                        width: MediaQuery.of(context).size.width * 0.4,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                  offset: distance,
                                  color: Colors.white,
                                  blurRadius: blur,
                                  inset: XOR_Result),
                              BoxShadow(
                                blurRadius: blur,
                                offset: -distance,
                                color: Colors.white30,
                                inset: XOR_Result,
                              ),
                            ],
                            color: Colors.black),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: FittedBox(
                              fit: BoxFit.fitHeight,
                              child: XOR_Result
                                  ? const Text('0',
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontFamily: 'origin'))
                                  : const Text('1',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontFamily: 'origin'))),
                        ),
                      ),
                    ],
                  ),

                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Divider(
                      height: 0.5,
                      color: Colors.white,
                    ),
                  ),

                  //XNOR GATE

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 10),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: const FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              '7. XNOR',
                              style: TextStyle(
                                  fontFamily: 'origin', color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 30),
                        child: GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) => XNOR_tt);
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.1,
                            height: MediaQuery.of(context).size.width * 0.1,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
                                    offset: distance,
                                    color: Colors.white,
                                    blurRadius: blur,
                                  ),
                                  BoxShadow(
                                    blurRadius: blur,
                                    offset: -distance,
                                    color: Colors.white30,
                                  ),
                                ],
                                color: Colors.black),
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: FittedBox(
                                  fit: BoxFit.fitHeight,
                                  child: Text('TT',
                                      style: TextStyle(
                                          color: Colors.yellow,
                                          fontFamily: 'origin'))),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () => setState(() {
                              isXNORaPressed = !isXNORaPressed;
                              if (isXNORaPressed == true &&
                                  isXNORbPressed == true) {
                                XNOR_Result = false;
                              } else if (isXNORaPressed == false &&
                                  isXNORbPressed == true) {
                                XNOR_Result = true;
                              } else if (isXNORaPressed == true &&
                                  isXNORbPressed == false) {
                                XNOR_Result = true;
                              } else if (isXNORaPressed == false &&
                                  isXNORbPressed == false) {
                                XNOR_Result = false;
                              }
                            }),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: MediaQuery.of(context).size.width * 0.25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: distance,
                                        color: Colors.white,
                                        blurRadius: blur,
                                        inset: isXNORaPressed),
                                    BoxShadow(
                                      blurRadius: blur,
                                      offset: -distance,
                                      color: Colors.white30,
                                      inset: isXNORaPressed,
                                    ),
                                  ],
                                  color: Colors.black),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FittedBox(
                                    fit: BoxFit.fitHeight,
                                    child: isXNORaPressed
                                        ? const Text('0',
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontFamily: 'origin'))
                                        : const Text('1',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontFamily: 'origin'))),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.15,
                          ),
                          GestureDetector(
                            onTap: () => setState(() {
                              isXNORbPressed = !isXNORbPressed;
                              if (isXNORaPressed == true &&
                                  isXNORbPressed == true) {
                                XNOR_Result = false;
                              } else if (isXNORaPressed == false &&
                                  isXNORbPressed == true) {
                                XNOR_Result = true;
                              } else if (isXNORaPressed == true &&
                                  isXNORbPressed == false) {
                                XNOR_Result = true;
                              } else if (isXNORaPressed == false &&
                                  isXNORbPressed == false) {
                                XNOR_Result = false;
                              }
                            }),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: MediaQuery.of(context).size.width * 0.25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: distance,
                                        color: Colors.white,
                                        blurRadius: blur,
                                        inset: isXNORbPressed),
                                    BoxShadow(
                                      blurRadius: blur,
                                      offset: -distance,
                                      color: Colors.white30,
                                      inset: isXNORbPressed,
                                    ),
                                  ],
                                  color: Colors.black),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FittedBox(
                                    fit: BoxFit.fitHeight,
                                    child: isXNORbPressed
                                        ? const Text('0',
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontFamily: 'origin'))
                                        : const Text('1',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontFamily: 'origin'))),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/images/XNOR.png',
                        width: MediaQuery.of(context).size.width * 0.4,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                  offset: distance,
                                  color: Colors.white,
                                  blurRadius: blur,
                                  inset: XNOR_Result),
                              BoxShadow(
                                blurRadius: blur,
                                offset: -distance,
                                color: Colors.white30,
                                inset: XNOR_Result,
                              ),
                            ],
                            color: Colors.black),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: FittedBox(
                              fit: BoxFit.fitHeight,
                              child: XNOR_Result
                                  ? const Text('0',
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontFamily: 'origin'))
                                  : const Text('1',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontFamily: 'origin'))),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

AlertDialog NOT_tt = AlertDialog(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(25),
  ),
  title: const Text('Truth Table',
      style: TextStyle(color: Colors.black, fontFamily: 'origin')),
  content: Container(
    decoration: BoxDecoration(
      boxShadow: [
        const BoxShadow(
          offset: Offset(5, 5),
          color: Colors.white,
          blurRadius: 10,
        ),
        BoxShadow(
          blurRadius: 10,
          offset: -const Offset(5, 5),
          color: Colors.white30,
        ),
      ],
      border: Border.all(width: 2, color: Colors.white),
    ),
    child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Table(
          children: [
            TableRow(children: [
              Column(
                children: const [
                  Text('Input',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  Divider(
                    height: 0.5,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                ],
              ),
              Column(
                children: const [
                  Text('Output',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'origin',
                      )),
                  Divider(
                    height: 0.5,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                ],
              ),
            ])
          ],
        )),
  ),
);

AlertDialog AND_tt = AlertDialog(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(25),
  ),
  title: const Text('Truth Table',
      style: TextStyle(color: Colors.black, fontFamily: 'origin')),
  content: Container(
    decoration: BoxDecoration(
      boxShadow: [
        const BoxShadow(
          offset: Offset(5, 5),
          color: Colors.white,
          blurRadius: 10,
        ),
        BoxShadow(
          blurRadius: 10,
          offset: -const Offset(5, 5),
          color: Colors.white30,
        ),
      ],
      border: Border.all(width: 2, color: Colors.white),
    ),
    child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Table(
          children: [
            TableRow(children: [
              Column(
                children: const [
                  Text('Input A',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  Divider(
                    height: 0.5,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                ],
              ),
              Column(
                children: const [
                  Text('Input B',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'origin',
                      )),
                  Divider(
                    height: 0.5,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                ],
              ),
              Column(
                children: const [
                  Text('Output',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  Divider(
                    height: 0.5,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                ],
              ),
            ])
          ],
        )),
  ),
);

AlertDialog NAND_tt = AlertDialog(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(25),
  ),
  title: const Text('Truth Table',
      style: TextStyle(color: Colors.black, fontFamily: 'origin')),
  content: Container(
    decoration: BoxDecoration(
      boxShadow: [
        const BoxShadow(
          offset: Offset(5, 5),
          color: Colors.white,
          blurRadius: 10,
        ),
        BoxShadow(
          blurRadius: 10,
          offset: -const Offset(5, 5),
          color: Colors.white30,
        ),
      ],
      border: Border.all(width: 2, color: Colors.white),
    ),
    child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Table(
          children: [
            TableRow(children: [
              Column(
                children: const [
                  Text('Input A',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'origin',
                      )),
                  Divider(
                    height: 0.5,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                ],
              ),
              Column(
                children: const [
                  Text('Input B',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'origin',
                      )),
                  Divider(
                    height: 0.5,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                ],
              ),
              Column(
                children: const [
                  Text('Output',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  Divider(
                    height: 0.5,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                ],
              ),
            ])
          ],
        )),
  ),
);

AlertDialog OR_tt = AlertDialog(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(25),
  ),
  title: const Text('Truth Table',
      style: TextStyle(color: Colors.black, fontFamily: 'origin')),
  content: Container(
    decoration: BoxDecoration(
      boxShadow: [
        const BoxShadow(
          offset: Offset(5, 5),
          color: Colors.white,
          blurRadius: 10,
        ),
        BoxShadow(
          blurRadius: 10,
          offset: -const Offset(5, 5),
          color: Colors.white30,
        ),
      ],
      border: Border.all(width: 2, color: Colors.white),
    ),
    child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Table(
          children: [
            TableRow(children: [
              Column(
                children: const [
                  Text('Input A',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'origin',
                      )),
                  Divider(
                    height: 0.5,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                ],
              ),
              Column(
                children: const [
                  Text('Input B',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'origin',
                      )),
                  Divider(
                    height: 0.5,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                ],
              ),
              Column(
                children: const [
                  Text('Output',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'origin',
                      )),
                  Divider(
                    height: 0.5,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                ],
              ),
            ])
          ],
        )),
  ),
);

AlertDialog NOR_tt = AlertDialog(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(25),
  ),
  title: const Text('Truth Table',
      style: TextStyle(color: Colors.black, fontFamily: 'origin')),
  content: Container(
    decoration: BoxDecoration(
      boxShadow: [
        const BoxShadow(
          offset: Offset(5, 5),
          color: Colors.white,
          blurRadius: 10,
        ),
        BoxShadow(
          blurRadius: 10,
          offset: -const Offset(5, 5),
          color: Colors.white30,
        ),
      ],
      border: Border.all(width: 2, color: Colors.white),
    ),
    child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Table(
          children: [
            TableRow(children: [
              Column(
                children: const [
                  Text('Input A',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  Divider(
                    height: 0.5,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                ],
              ),
              Column(
                children: const [
                  Text('Input B',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'origin',
                      )),
                  Divider(
                    height: 0.5,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                ],
              ),
              Column(
                children: const [
                  Text('Output',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  Divider(
                    height: 0.5,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                ],
              ),
            ])
          ],
        )),
  ),
);

AlertDialog XOR_tt = AlertDialog(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(25),
  ),
  title: const Text('Truth Table',
      style: TextStyle(color: Colors.black, fontFamily: 'origin')),
  content: Container(
    decoration: BoxDecoration(
      boxShadow: [
        const BoxShadow(
          offset: Offset(5, 5),
          color: Colors.white,
          blurRadius: 10,
        ),
        BoxShadow(
          blurRadius: 10,
          offset: -const Offset(5, 5),
          color: Colors.white30,
        ),
      ],
      border: Border.all(width: 2, color: Colors.white),
    ),
    child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Table(
          children: [
            TableRow(children: [
              Column(
                children: const [
                  Text('Input A',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  Divider(
                    height: 0.5,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                ],
              ),
              Column(
                children: const [
                  Text('Input B',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  Divider(
                    height: 0.5,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                ],
              ),
              Column(
                children: const [
                  Text('Output',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  Divider(
                    height: 0.5,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                ],
              ),
            ])
          ],
        )),
  ),
);

AlertDialog XNOR_tt = AlertDialog(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(25),
  ),
  title: const Text('Truth Table',
      style: TextStyle(color: Colors.black, fontFamily: 'origin')),
  content: Container(
    decoration: BoxDecoration(
      boxShadow: [
        const BoxShadow(
          offset: Offset(5, 5),
          color: Colors.white,
          blurRadius: 10,
        ),
        BoxShadow(
          blurRadius: 10,
          offset: -const Offset(5, 5),
          color: Colors.white30,
        ),
      ],
      border: Border.all(width: 2, color: Colors.white),
    ),
    child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Table(
          children: [
            TableRow(children: [
              Column(
                children: const [
                  Text('Input A',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  Divider(
                    height: 0.5,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                ],
              ),
              Column(
                children: const [
                  Text('Input B',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  Divider(
                    height: 0.5,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                ],
              ),
              Column(
                children: const [
                  Text('Output',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  Divider(
                    height: 0.5,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'origin')),
                ],
              ),
            ])
          ],
        )),
  ),
);
