import 'package:flutter/material.dart';

void main() => runApp(ScreenWidget());

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Text')),
        ),
        body: SimpleWidget(),
      ),
    );
  }
}

class SimpleWidget extends StatefulWidget {
  @override
  State<SimpleWidget> createState() => _SimpleWidgetState();
}

class _SimpleWidgetState extends State<SimpleWidget> {
  @override
  int _count = 0;

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('$_count'),
          ElevatedButton(
            onPressed: (_habdleButton),
            style: ElevatedButton.styleFrom(),
            child: const Text('PUSH'),
          )
        ],
      ),
    );
  }

  void _habdleButton() {
    setState(() {
      _count++;
    });
  }
}

// class SimpleWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child:
//             const Center(child: Text('Мой текст', textDirection: TextDirection.ltr)));
//   }
// }
