import 'package:flutter/material.dart';
import 'package:untitled/utils/them.dart';
import 'package:untitled/widgets/navigators/AnonymousRoutes.dart';
import 'package:untitled/widgets/navigators/DetailScreen.dart';

class NamedRoutes extends StatelessWidget {
  const NamedRoutes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: basicTheme(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreenNamed(),
        '/details': (context) => DetailScreen(),
      },
    );
  }
}

class HomeScreenNamed extends StatelessWidget {
  const HomeScreenNamed({Key? key}) : super(key: key);

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
            const Image(image: AssetImage('assets/images/mac.png')),
            // Image.network(
            //     'https://www.notebookcheck.net/fileadmin/Notebooks/News/_nc3/MacBook_Air7035.jpg',
            //     width: 300),
            ElevatedButton(
              child: Text('Подробнее'),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/details',
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
