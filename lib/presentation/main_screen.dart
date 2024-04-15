import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subway_search/data/repository/subway_search_repository_impl.dart';
import 'package:subway_search/presentation/main_view_model.dart';
import 'package:subway_search/service/rail_service.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

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
              controller: viewModel.textEditingController,
              decoration: InputDecoration(
                  hintText: '역 이름을 입력하세요',
                  suffixIcon: IconButton(
                    onPressed: () {
                      viewModel.fetchData();
                    },
                    icon: const Icon(Icons.search),
                  )),
            ),
          ),
          const SizedBox(height: 10.0),
          Column(
            children: viewModel.realTimeArrivalList.map((e) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 16),
                  Expanded(
                    flex: 1,
                      child: Text(RailService().getRailText(e.subwayId))
                  ),
                  Expanded(
                    flex: 2,
                      child: Text(e.trainLineNm, textAlign: TextAlign.center,)
                  ),
                  Expanded(
                    flex: 1,
                      child: Text('${e.barvlDt}초 후', textAlign: TextAlign.right,)
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
