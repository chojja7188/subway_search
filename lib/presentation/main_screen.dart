import 'package:flutter/material.dart';
import 'package:subway_search/data/repository/subway_search_repository_impl.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text('Hi')),
      ),
    );
  }
}
