import 'package:flutter/material.dart';

class GavelCalculator extends StatefulWidget {
  @override
  _GavelCalculatorState createState() => _GavelCalculatorState();
}

class _GavelCalculatorState extends State<GavelCalculator> {
  double padding_number = 10;
  double total = 0.0;
  int cost_affidavit = 100;
  int motion_on_notice = 200;
  int motion_exparte = 100;
  int writ_of_summons = 500;
  int prayers = 200;
  int service = 100;
  int penalty = 100;

  // Creating the number of the values
  int num_affidavit = 0;
  int num_motion_on_notice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "NGN ${this.total}",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      GestureDetector(
                        child: Icon(Icons.autorenew),
                        onTap: () {
                          setState(() {
                            this.total = 0;
                            this.num_affidavit = 0;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(padding_number),
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Affidavit N100",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "${num_affidavit}",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        onTap: () {
                          setState(() {
                            if (this.total >= 0 && this.num_affidavit >= 0) {
                              this.total = this.total + this.cost_affidavit;
                              this.num_affidavit = this.num_affidavit + 1;
                            }
                          });
                        },
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.do_not_disturb_on,
                          color: Colors.white,
                        ),
                        onTap: () {
                          setState(() {
                            if (this.total > 0 && this.num_affidavit > 0) {
                              this.total = this.total - this.cost_affidavit;
                              this.num_affidavit = this.num_affidavit - 1;
                            }
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              padding: EdgeInsets.all(padding_number),
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Motion on Notice N200",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "0",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        onTap: () {
                          setState(() {
                            this.total = this.total + this.motion_on_notice;
                          });
                        },
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.do_not_disturb_on,
                          color: Colors.white,
                        ),
                        onTap: () {
                          setState(() {
                            this.total = this.total - this.motion_on_notice;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              padding: EdgeInsets.all(padding_number),
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Motion on Exparte N100",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "0",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        onTap: () {
                          setState(() {
                            this.total = this.total + this.motion_exparte;
                          });
                        },
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      GestureDetector(
                        child:
                            Icon(Icons.do_not_disturb_on, color: Colors.white),
                        onTap: () {
                          setState(() {
                            this.total = this.total - this.motion_exparte;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              padding: EdgeInsets.all(padding_number),
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Writ of Summons N500",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                      )),
                  Row(
                    children: <Widget>[
                      Text(
                        "0",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        onTap: () {
                          setState(() {
                            this.total = this.total + this.writ_of_summons;
                          });
                        },
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      GestureDetector(
                        child:
                            Icon(Icons.do_not_disturb_on, color: Colors.white),
                        onTap: () {
                          setState(() {
                            this.total = this.total - this.writ_of_summons;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              padding: EdgeInsets.all(padding_number),
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Prayers N200",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "0",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        onTap: () {
                          setState(() {
                            this.total = this.total + this.prayers;
                          });
                        },
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.do_not_disturb_on,
                          color: Colors.white,
                        ),
                        onTap: () {
                          setState(() {
                            this.total = this.total - this.prayers;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              padding: EdgeInsets.all(padding_number),
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Service N100",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "0",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        onTap: () {
                          setState(() {
                            this.total = this.total - this.service;
                          });
                        },
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.do_not_disturb_on,
                          color: Colors.white,
                        ),
                        onTap: () {
                          setState(() {
                            this.total = this.total - this.service;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              padding: EdgeInsets.all(padding_number),
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Penalty N100",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "0",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        onTap: () {
                          setState(() {
                            this.total = this.total + this.penalty;
                          });
                        },
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.do_not_disturb_on,
                          color: Colors.white,
                        ),
                        onTap: () {
                          setState(() {
                            this.total = this.total - this.penalty;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
