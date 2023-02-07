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
        body: ContainerWidget(),
      ),
    );
  }
}

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({super.key});

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      //color: Colors.green,
      child: Text(
        'Panda',
        style: TextStyle(
            fontSize: 50, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      height: 200,
      width:
          double.infinity, //занимает 100% по отношению к родительскому элементу
      alignment:
          Alignment.center, // выравнивает дочерний элемент по центру контейнера
      padding: EdgeInsets.only(top: 5, left: 5), // внутренние отступы
      margin: EdgeInsets.all(50), // внешний отступ
      //transform: Matrix4.rotationZ(0.1),//поворачиваем контейнер относительно осей
      decoration: BoxDecoration(
          //gradient: LinearGradient(colors: [Colors.red, Colors.green, Colors.yellow])) ,//фоновое оформление контейнера. Если указывать тут то нужно удалить цвет контейнера указанный выше
          color: Colors.green,
          image: DecorationImage(
              image: Image.network(
                      'https://poltavawave.com.ua/media/poltavska-khvilia_xcwi/AaZR_5RnR.jpeg')
                  .image,
              fit: BoxFit.cover),
          // borderRadius: BorderRadius.circular(15),
          // border: Border.all(
          //   color: Colors.black,// цвет границы контейнера
          //   width: 5
          // )
          shape: BoxShape.circle,
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            const BoxShadow(
                color: Colors.black45, // цвет тени
                offset: Offset(-5, 5), //смещение тени от рамки
                blurRadius: 5, //размытиу
                spreadRadius:
                    5 //величина на которую должен быть увеличен контейнер перед применнением размытия
                )
          ]),
    ));
  }
}
