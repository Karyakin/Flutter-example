import 'package:flutter/material.dart';
import 'package:untitled/ui/widgets/BappBurButton.dart';

class BAppBar extends StatelessWidget {
  const BAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 10,
      // color: Colors.blueGrey,
      child: Container(
        height: 60,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomAppBarButton(title: 'Noties', icon: Icons.folder),
            BottomAppBarButton(title: 'Archive', icon: Icons.archive),
          ],
        ),
      ),
      shape: CircularNotchedRectangle(),
    );
  }
}