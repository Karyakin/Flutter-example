// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(ScreenWidget());

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('ContainerWidget')),
        ),
        body: (SimpleWidget()),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key,
      required this.text,
      required this.color,
      required this.wids,
      required this.fontsize});

  final String text;
  final Color color;
  final double wids;
  final double fontsize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: wids,
      color: color,
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontsize,
        ),
      ),
    );
  }
}

class SimpleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:
          MainAxisAlignment.spaceEvenly, //расположение дочерних элементов
      mainAxisSize:
          MainAxisSize.min, //сколько места должно быть занято в главной оси
      crossAxisAlignment: CrossAxisAlignment.baseline,
      //для параметра CrossAxisAlignment.baseline необходимо указывать параметр textBaseLine : ideographic и alphabetic https://www.w3schools.com/tags/img_textbaseline.gif, //https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/textBaseline
      textBaseline: TextBaseline.alphabetic,
      textDirection:
          TextDirection.rtl, // расположение текста справа на лево и наоборот
      verticalDirection: VerticalDirection
          .down, //расположение элементов вниз/вверх. Сработает только для колонки. Контролирует направление дочерних элементов

      // ignore: prefer_const_literals_to_create_immutables
      children: <Widget>[
        TextWidget(
            color: Colors.limeAccent, wids: 120, text: 'First', fontsize: 50),
        TextWidget(
            color: Colors.cyanAccent, wids: 180, text: 'Second', fontsize: 40),
        TextWidget(
            color: Colors.purpleAccent, wids: 100, text: 'Thir', fontsize: 30)
      ],
    );
  }
}


// next https://www.youtube.com/watch?v=I5DF3CFDG8s&list=PL6lh8cTntlDiLlH_rHl5F0JOy_gRm_Wa4&index=7&ab_channel=ProFlutter%D1%83%D1%80%D0%BE%D0%BA%D0%B8%D0%BD%D0%B0%D1%80%D1%83%D1%81%D1%81%D0%BA%D0%BE%D0%BC