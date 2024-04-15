import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subway_search/data/repository/subway_search_repository_impl.dart';
import 'package:subway_search/presentation/main_view_model.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();

    return Scaffold(
      body: Container()
    );
  }
}
