// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:untitled/ui/widgets/BAppBar.dart';
import 'package:untitled/utils/constans.dart';
import 'package:untitled/utils/them.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //  theme: ThemeData.light(),
      // theme: ThemeData.dark(),
      // theme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
      theme: basicTheme(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Theme.of(context).iconTheme.color,
        ),
        title: Text(
          'Custom Theme',
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontFamily: "Anton-Regular", fontSize: 30),// расширяем родительскую тему
        ),
      ),
      body: ListWidget(),
      bottomNavigationBar: BAppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class ListWidget extends StatelessWidget {
  const ListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 20, bottom: 5, right: 10, left: 10),
      itemCount: 15,
      itemBuilder: (BuildContext context, int index) {
        return (index == 14)
            ? Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 40),
                child: ElevatedButton(
                  child: Text("Load More"),
                  onPressed: () {},
                ))
            : Card(
                child: ListTile(
                  trailing: Theme(
                    data: Theme.of(context).copyWith(
                      iconTheme: Theme.of(context).iconTheme.copyWith(
                            color: Colors.grey,
                          ),
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios,
                    ),
                  ),
                  title: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Header $index',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  subtitle: Text(
                    'Description text $index',
                    // style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              );
      },
    );
  }
}

// https://www.youtube.com/watch?v=tlS0tMb-0AE&list=PL6lh8cTntlDiLlH_rHl5F0JOy_gRm_Wa4&index=13&ab_channel=ProFlutter%D1%83%D1%80%D0%BE%D0%BA%D0%B8%D0%BD%D0%B0%D1%80%D1%83%D1%81%D1%81%D0%BA%D0%BE%D0%BC
