import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subway_search/data/repository/subway_search_repository_impl.dart';
import 'package:subway_search/presentation/main_view_model.dart';
import 'package:subway_search/service/rail_service.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      context.read<MainViewModel>().fetchTime();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          viewModel.fetchData();
        },
        child: Icon(Icons.refresh),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(50.0),
            child: TextField(
              onTapOutside: (value) => FocusManager.instance.primaryFocus?.unfocus(),
              controller: viewModel.textEditingController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32)
                  ),
                  hintText: '역 이름을 입력하세요',
                  suffixIcon: IconButton(
                    onPressed: () {
                      viewModel.fetchData();
                    },
                    icon: const Icon(Icons.search),
                  )),
                onSubmitted: (value) {
                  viewModel.fetchData();
                }
            ),
          ),
          const SizedBox(height: 10.0),
          viewModel.isLoading
              ? Align(child: CircularProgressIndicator())
              : Column(
            children: viewModel.realTimeArrivalList.map((e) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 16),
                  Expanded(
                    flex: 1,
                      child: RailService().getRailText(e.subwayId)
                  ),
                  Expanded(
                    flex: 2,
                      child: Text(e.trainLineNm, textAlign: TextAlign.center,)
                  ),
                  Expanded(
                    flex: 1,
                      child: Text('${viewModel.getTime(e.arvlCd)}초 후 도착', textAlign: TextAlign.right,)
                  ),
                  SizedBox(width: 16),
                ],
              ),
            )).toList(),
          )
        ],
      ),

    );
  }
}
