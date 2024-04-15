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
            children: viewModel.realTimeArrivalList.map((e) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(e.subwayId),
                Text(e.trainLineNm),
                Text('${e.barvlDt}초 후'),
              ],
            )).toList(),
          )
        ],
      ),

    );
  }
}
