import 'package:flutter/material.dart';
import 'package:untitled/widgets/BackgroundImage.dart';
import 'package:untitled/widgets/description.dart';
import 'package:untitled/widgets/hearticon.dart';

class PositionedWidget extends StatelessWidget {
  // const PositionedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,// для того, чтобы виджеты отоброжались за стеком. ЧТобы не пропадали
      fit: StackFit.expand,// растягивает изображение до максимально допустимого размера. В нашем случае до размера Scaffold
      children: [
        BackgroundImage(),
        Positioned(
          right: 50,
          top: 400,
          child: Description(),
        ),
        Positioned(right: 60, top: 410, child: HeartIcon())
      ],
    );
  }
}
