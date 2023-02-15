import 'package:flutter/material.dart';
import 'package:untitled/utils/them.dart';

class NamedRoutesWithParams extends StatelessWidget {
  const NamedRoutesWithParams({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: basicTheme(),
      routes: {
        '/': (context) => HomeScreenWithParams(),
        '/details': (context) => DetailsScreenWithParams(),
      },
    );
  }
}

class HomeScreenWithParams extends StatelessWidget {
  const HomeScreenWithParams({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imageUrl = 'assets/images/mac.png';
    String name = 'MacBook';
    String description =
        'MacBook — бренд ноутбуков линейки Macintosh на операционной системе macOS, разработанный корпорацией Apple. В 2006 году заменил бренды PowerBook и iBook во время перехода с PowerPC на Intel x86. Текущая линейка состоит из MacBook Air (с 2008 года) и MacBook Pro (с 2006 года).';

    return Scaffold(
      appBar: AppBar(
        title: Text('Named route With Params'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 10),
              child: Text(name),
            ),
            Image(image: AssetImage(imageUrl), width: 200,),
            ElevatedButton(
              child: Text('Подробнее'),
              onPressed: () {
                Product product = Product(
                    imageUrl: imageUrl, name: name, description: description);
                Navigator.pushNamed(context, '/details', arguments: product);
              },
            )
          ],
        ),
      ),
    );
  }
}

class DetailsScreenWithParams extends StatelessWidget {
  const DetailsScreenWithParams({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Product product = ModalRoute.of(context)?.settings.arguments as Product;
    //final arg = ModalRoute.of(context)!.settings.arguments as Product;


    return Scaffold(
      appBar: AppBar(
        title: Text('Подробная информация'),
      ),
      body: Column(
        children: [
          Text(product.name),
          Image(image: AssetImage(product.imageUrl)),
          Text(product.description)
        ],
      ),
    );
  }
}

class Product {
  final String imageUrl;
  final String name;
  final String description;

  Product(
      {required this.imageUrl, required this.name, required this.description});
}
