// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:untitled/utils/them.dart';
//import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //brightness: basicThem(),
      ),


    );
  }
}



// https://www.youtube.com/watch?v=tlS0tMb-0AE&list=PL6lh8cTntlDiLlH_rHl5F0JOy_gRm_Wa4&index=13&ab_channel=ProFlutter%D1%83%D1%80%D0%BE%D0%BA%D0%B8%D0%BD%D0%B0%D1%80%D1%83%D1%81%D1%81%D0%BA%D0%BE%D0%BC
