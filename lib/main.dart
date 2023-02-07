// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(ScreenWidget());

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('ListView Widget')),
        ),
        body: (ListViewSeparatedWidget()),
      ),
    );
  }
}

class SimpleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection:
          Axis.vertical, // направление списка по горизонтали или вертикали
      reverse: false, // переворачивает список снизу в верх
      controller: ScrollController(
          initialScrollOffset: 100), // управление начальным смещение прокрутки
      physics:
          ScrollPhysics(), // определяет, как будет вести себя список, когда пользователь достигнет конца, или когда пользователь прекращает прокрутку
      padding: EdgeInsets.all(20),
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

//элементы списка создаются лениво. т.е. по мере прокрутки, а те, что уже ушли вверх, более ранние элементы(прокручены - удаляются). Хорошо длч больштх списков
class ListViewBuilderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // itemCount: 30, // это свойство можно закоментировать и список станет бесконечным, т.к. элементы подгружаюься лениво, т.е. по мере зпроса
        itemBuilder: (context, index) {
      return TextWidget(text: '$index');
    });
  }
}

//список с разделителем между каждым элементом. Фактически два переплетенных списка: один основной, второй переплетенный с основным список разделителей
// разделителем может быть любой виджет(текст, картинка или другой любой виджет)
class ListViewSeparatedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return TextWidget(text: '$index');
      },
      separatorBuilder: (context, index) {
        return Divider(
          color: Colors.red,
          thickness: 2,
        );
      },
      itemCount: 20,
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

// !url https://www.youtube.com/watch?v=I5DF3CFDG8s&list=PL6lh8cTntlDiLlH_rHl5F0JOy_gRm_Wa4&index=7&ab_channel=ProFlutter%D1%83%D1%80%D0%BE%D0%BA%D0%B8%D0%BD%D0%B0%D1%80%D1%83%D1%81%D1%81%D0%BA%D0%BE%D0%BC
