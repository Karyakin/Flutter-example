// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:untitled/Example.dart';
import 'package:untitled/widgets/description.dart';
import 'package:untitled/widgets/positionedWidget.dart';
import 'package:untitled/widgets/stackwidget.dart';

import 'widgets/IndexedStack.dart';

void main() => runApp(ScreenWidget());

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stack & Positioned Widgets'),
        ),
         //body: Example(),
         // body: StackWidget(),
        //body: PositionedWidget(),
        body: IndexedStackWidget(),
      ),
    );
  }
}

// https://www.youtube.com/watch?v=VR1D-HQDi_o&list=PL6lh8cTntlDiLlH_rHl5F0JOy_gRm_Wa4&index=14&ab_channel=ProFlutter%D1%83%D1%80%D0%BE%D0%BA%D0%B8%D0%BD%D0%B0%D1%80%D1%83%D1%81%D1%81%D0%BA%D0%BE%D0%BC
