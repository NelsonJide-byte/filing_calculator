import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './psges/gavel_calculator.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          textTheme:
              GoogleFonts.montserratTextTheme(Theme.of(context).textTheme)),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Filing Fees Calculator")),
        ),
        body: GavelCalculator(),
      ),
    );
  }
}
