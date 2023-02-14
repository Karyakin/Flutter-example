

import 'package:flutter/material.dart';
import 'package:untitled/widgets/BackgroundImage.dart';
import 'package:untitled/widgets/description.dart';
import 'package:untitled/widgets/hearticon.dart';

class Example extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BackgroundImage(),
        Description(),
        HeartIcon()
           ],
    );
  }
}
