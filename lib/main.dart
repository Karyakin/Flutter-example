// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(ScreenWidget());

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('GridView Widget')),
        ),
        body: (PageViewWidget()),
      ),
    );
  }
}

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(5),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
      child: Text(
        text,
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}

// !https://www.youtube.com/watch?v=_DPEtgtXIA0&list=PL6lh8cTntlDiLlH_rHl5F0JOy_gRm_Wa4&index=9&ab_channel=ProFlutter%D1%83%D1%80%D0%BE%D0%BA%D0%B8%D0%BD%D0%B0%D1%80%D1%83%D1%81%D1%81%D0%BA%D0%BE%D0%BC
