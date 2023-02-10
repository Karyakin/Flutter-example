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
        body: (GridViewCount()),
      ),
    );
  }
}

//элементы создаются лениво, т.е. по мере прокрутки подгружаются, а более старые уничтожаюься
class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        TextWidget(text: '1'),
        TextWidget(text: '2'),
        TextWidget(text: '3'),
        TextWidget(text: '4'),
        TextWidget(text: '5'),
        TextWidget(text: '6'),
        TextWidget(text: '7'),
        TextWidget(text: '8'),
        TextWidget(text: '9'),
        TextWidget(text: '10'),
        TextWidget(text: '11'),
        TextWidget(text: '12'),
        TextWidget(text: '13'),
      ],
    );
  }
}

class GridViewWUnlim extends StatelessWidget {
  const GridViewWUnlim({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        //itemCount: 20,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return TextWidget(text: '$index');
        });
  }
}

class GridViewCount extends StatelessWidget {
  const GridViewCount({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        TextWidget(text: '1'),
        TextWidget(text: '2'),
        TextWidget(text: '3'),
        TextWidget(text: '4'),
        TextWidget(text: '5'),
        TextWidget(text: '6'),
        TextWidget(text: '7'),
        TextWidget(text: '8'),
        TextWidget(text: '9'),
        TextWidget(text: '10'),
      ],
    );
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

// !https://www.youtube.com/watch?v=ZudufqYrpco&list=PL6lh8cTntlDiLlH_rHl5F0JOy_gRm_Wa4&index=9&ab_channel=ProFlutter%D1%83%D1%80%D0%BE%D0%BA%D0%B8%D0%BD%D0%B0%D1%80%D1%83%D1%81%D1%81%D0%BA%D0%BE%D0%BC
