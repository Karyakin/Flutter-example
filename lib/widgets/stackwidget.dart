import 'package:flutter/material.dart';
import 'package:untitled/widgets/BackgroundImage.dart';
import 'package:untitled/widgets/description.dart';
import 'package:untitled/widgets/hearticon.dart';

class StackWidget extends StatelessWidget {
  // const StackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      // alignment: Alignment(1,1),
      children: [
        BackgroundImage(),
        Description(),
        HeartIcon()
      ],
    );
  }
}
