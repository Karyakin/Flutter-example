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
        body: (PageViewWidgetBuilder()),
      ),
    );
  }
}

class PageViewWidgetBuilder extends StatelessWidget {
  const PageViewWidgetBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Container(
          color: index % 2 == 0 ? Colors.red : Colors.green,
          alignment: Alignment.center,
          child: Text('$index'),
        );
      },
    );
  }
}

class PageViewWidget extends StatelessWidget {
  PageViewWidget({super.key});

  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical, // направление прокрутки
      pageSnapping:
          true, // отключается привязка страниц. Т.е. докручивает страницу. Удобно для просмотра. Когда останавливаем прокрутку страница остается на том же месте, не перескакивает на следующую
      physics:
          BouncingScrollPhysics(), // в конце и в начале если тянуть, то появляется белое поле
      //physics: NeverScrollableScrollPhysics(),// запрещает прокрутку
      onPageChanged: (value) =>
          print('Page number $value'), // событие при изменении страницы
      controller: controller, // устанавливает стартовый номер страницы
      children: [
        Container(
          color: Colors.red,
          child: Center(child: Text('STOP')),
        ),
        Container(
          color: Colors.yellow,
          child: Center(child: Text('ATANTION')),
        ),
        Container(
            color: Colors.green,
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                ElevatedButton(
                  style: ButtonStyle(),
                  onPressed: () {
                    //controller.jumpToPage(0);// быстрый переход к странице
                    controller.animateToPage(0,
                        duration: Duration(seconds: 2),
                        curve: Curves.slowMiddle);
                  },
                  child: const Text('Reload'),
                ),
              ],
            ))
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

// !https://www.youtube.com/watch?v=_DPEtgtXIA0&list=PL6lh8cTntlDiLlH_rHl5F0JOy_gRm_Wa4&index=9&ab_channel=ProFlutter%D1%83%D1%80%D0%BE%D0%BA%D0%B8%D0%BD%D0%B0%D1%80%D1%83%D1%81%D1%81%D0%BA%D0%BE%D0%BC
