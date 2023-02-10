// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(ScreenWidget());

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Satisfy-Regular"),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('GridView Widget')),
        ),
        body: Center(
          child: Column(
            // ignore: sort_child_properties_last
            children: [
              Text(
                "Anton-Regular",
                style: TextStyle(fontFamily: 'Anton-Regular'),
              ),
              Text(
                "Creepster-Regular",
                style: TextStyle(fontFamily: 'Creepster-Regular'),
              ),
              Text(
                "GoogleGonts",
                style: GoogleFonts.bangers(
                  textStyle: TextStyle(fontSize: 30),
                ),
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
        ),
      ),
    );
  }
}


// https://www.youtube.com/watch?v=EN-1oO8HK84&list=PL6lh8cTntlDiLlH_rHl5F0JOy_gRm_Wa4&index=10&ab_channel=ProFlutter%D1%83%D1%80%D0%BE%D0%BA%D0%B8%D0%BD%D0%B0%D1%80%D1%83%D1%81%D1%81%D0%BA%D0%BE%D0%BC
