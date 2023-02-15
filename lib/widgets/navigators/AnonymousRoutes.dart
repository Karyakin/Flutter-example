import 'package:flutter/material.dart';
import 'package:untitled/utils/them.dart';
import 'package:untitled/widgets/navigators/DetailScreen.dart';

class AnonymousRoutes extends StatelessWidget {
  const AnonymousRoutes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: basicTheme(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anonymouse rote'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('photo')
            /*Image.network(
                'https://www.notebookcheck.net/fileadmin/Notebooks/News/_nc3/MacBook_Air7035.jpg',
                width: 300)*/,
            ElevatedButton(
              child: Text('Подробнее'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen();
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}
