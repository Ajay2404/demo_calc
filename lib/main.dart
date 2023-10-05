import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Demo(),
  ));
}

class Demo extends StatefulWidget {
  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  String Inp = "";
  double firstNum = 0;
  double secondNum = 0;
  int cnt = 0;

  void comm(String val) {
    Inp = Inp + val;
  }

  void comm2(String s) {
    double temp = firstNum;
    firstNum = double.parse(Inp);
    if (cnt == 9712) {
      firstNum = firstNum + temp;
    } else if (cnt == 9286) {
      firstNum = temp - firstNum;
    }
    if (s == "+") {
      cnt = 9712;
    } else if (s == "-") {
      cnt = 9286;
    } else if (s == "/") {
      cnt = 5;
    }
    setState(() {
      Inp = "";
    });
  }

  void comm3() {
    Inp = "";
  }

  void comm4() {
    if (Inp.isNotEmpty) {
      Inp = Inp.substring(0, Inp.length - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("CALCULATOR"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            margin: EdgeInsets.fromLTRB(10, 20, 0, 20),
            alignment: Alignment.bottomRight,
            child: Text(
              Inp,
              style: TextStyle(fontSize: 38, color: Colors.white),
            ),
            color: Colors.black,
          )),
          Row(
            children: [
              Expanded(
                  child: Container(
                      margin: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                            padding: EdgeInsets.all(30),
                            shape: CircleBorder(side: BorderSide()),
                          ),
                          onPressed: () {
                            firstNum = 0;
                            secondNum = 0;
                            Inp = "";
                            cnt = 0;
                            setState(() {
                              comm3();
                            });
                          },
                          child: Text(
                            "AC",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                            padding: EdgeInsets.all(30),
                            shape: CircleBorder(side: BorderSide()),
                          ),
                          onPressed: () {
                            setState(() {
                              comm4();
                            });
                          },
                          child: Text(
                            "<",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                            padding: EdgeInsets.all(30),
                            shape: CircleBorder(side: BorderSide()),
                          ),
                          onPressed: () {
                            setState(() {
                              comm2("%");
                            });
                          },
                          child: Text(
                            "%",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orangeAccent,
                            padding: EdgeInsets.all(30),
                            shape: CircleBorder(side: BorderSide()),
                          ),
                          onPressed: () {
                            setState(() {
                              comm2("*");
                            });
                          },
                          child: Text(
                            "*",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )))),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                      margin: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF424242),
                            padding: EdgeInsets.all(30),
                            shape: CircleBorder(side: BorderSide()),
                          ),
                          onPressed: () {
                            setState(() {
                              comm("7");
                            });
                          },
                          child: Text(
                            "7",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF424242),
                            padding: EdgeInsets.all(30),
                            shape: CircleBorder(side: BorderSide()),
                          ),
                          onPressed: () {
                            setState(() {
                              comm("8");
                            });
                          },
                          child: Text(
                            "8",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF424242),
                            padding: EdgeInsets.all(30),
                            shape: CircleBorder(side: BorderSide()),
                          ),
                          onPressed: () {
                            setState(() {
                              comm("9");
                            });
                          },
                          child: Text(
                            "9",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orangeAccent,
                            padding: EdgeInsets.all(30),
                            shape: CircleBorder(side: BorderSide()),
                          ),
                          onPressed: () {
                            setState(() {
                              comm2("/");
                            });
                            cnt = 5;
                          },
                          child: Text(
                            "/",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )))),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                      margin: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF424242),
                            padding: EdgeInsets.all(30),
                            shape: CircleBorder(side: BorderSide()),
                          ),
                          onPressed: () {
                            setState(() {
                              comm("4");
                            });
                          },
                          child: Text(
                            "4",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF424242),
                            padding: EdgeInsets.all(30),
                            shape: CircleBorder(side: BorderSide()),
                          ),
                          onPressed: () {
                            setState(() {
                              comm("5");
                            });
                          },
                          child: Text(
                            "5",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF424242),
                            padding: EdgeInsets.all(30),
                            shape: CircleBorder(side: BorderSide()),
                          ),
                          onPressed: () {
                            setState(() {
                              comm("6");
                            });
                          },
                          child: Text(
                            "6",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orangeAccent,
                            padding: EdgeInsets.all(30),
                            shape: CircleBorder(side: BorderSide()),
                          ),
                          onPressed: () {
                            setState(() {
                              comm2("-");
                            });
                          },
                          child: Text(
                            "-",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )))),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                      margin: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF424242),
                            padding: EdgeInsets.all(30),
                            shape: CircleBorder(side: BorderSide()),
                          ),
                          onPressed: () {
                            setState(() {
                              comm("1");
                            });
                          },
                          child: Text(
                            "1",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF424242),
                            padding: EdgeInsets.all(30),
                            shape: CircleBorder(side: BorderSide()),
                          ),
                          onPressed: () {
                            setState(() {
                              comm("2");
                            });
                          },
                          child: Text(
                            "2",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF424242),
                            padding: EdgeInsets.all(30),
                            shape: CircleBorder(side: BorderSide()),
                          ),
                          onPressed: () {
                            setState(() {
                              comm("3");
                            });
                          },
                          child: Text(
                            "3",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orangeAccent,
                            padding: EdgeInsets.all(30),
                            shape: CircleBorder(side: BorderSide()),
                          ),
                          onPressed: () {
                            setState(() {
                              comm2("+");
                            });
                          },
                          child: Text(
                            "+",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )))),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                      margin: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF424242),
                            padding: EdgeInsets.all(30),
                            shape: CircleBorder(side: BorderSide()),
                          ),
                          onPressed: () {
                            setState(() {
                              comm("00");
                            });
                          },
                          child: Text(
                            "00",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF424242),
                            padding: EdgeInsets.all(30),
                            shape: CircleBorder(side: BorderSide()),
                          ),
                          onPressed: () {
                            setState(() {
                              comm("0");
                            });
                          },
                          child: Text(
                            "0",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF424242),
                            padding: EdgeInsets.all(30),
                            shape: CircleBorder(side: BorderSide()),
                          ),
                          onPressed: () {
                            setState(() {
                              comm(".");
                            });
                          },
                          child: Text(
                            ".",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orangeAccent,
                            padding: EdgeInsets.all(30),
                            shape: CircleBorder(side: BorderSide()),
                          ),
                          onPressed: () {
                            setState(() {
                              secondNum = double.parse(Inp);
                              Inp = "";
                              if (cnt == 9712) {
                                Inp = "${firstNum + secondNum}";
                              } else if (cnt == 9286) {
                                Inp = "${firstNum - secondNum}";
                              } else if (cnt == 971292) {
                                Inp = "${firstNum * secondNum}";
                              } else if (cnt == 97129286) {
                                Inp = "${firstNum / secondNum}";
                              } else if (cnt == 9712928612) {
                                Inp = "${firstNum * secondNum / 100}";
                              }
                            });
                          },
                          child: Text(
                            "=",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )))),
            ],
          ),
        ],
      ),
    );
  }
}
