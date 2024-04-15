import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:subway_search/data/model/realtime_arrival.dart';
import 'package:subway_search/data/repository/subway_search_repository_impl.dart';

class MainViewModel with ChangeNotifier {
  final SubwaySearchRepositoryImpl _repository;
  MainViewModel({required SubwaySearchRepositoryImpl repository}) : _repository = repository;

  List<RealtimeArrival> realTimeArrivalList = [];
  TextEditingController textEditingController = TextEditingController();
  int time = 0;

  void fetchData() async {
    String stationName = textEditingController.text;
    if (stationName.endsWith('역')) {
      stationName = stationName.substring(0, stationName.length - 1);
    }

    realTimeArrivalList = await _repository.getRealtimeArrivalList(stationName);
    time = 0;
    notifyListeners();
  }

  void fetchTime() {
    time++;
    notifyListeners();
  }

  int getTime(int sec) {
    if (sec - time <= 0) {
      return 0;
    } else {
      return sec - time;
    }
  }
}
