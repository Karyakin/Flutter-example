import 'package:flutter/material.dart';

class BottomAppBarButton extends StatelessWidget {
  final String title;
  final IconData icon;

  const BottomAppBarButton({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 40,
      onPressed: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Theme.of(context).iconTheme.color,
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
