import 'package:flutter/cupertino.dart';
import 'package:subway_search/data/model/realtime_arrival.dart';
import 'package:subway_search/data/repository/subway_search_repository_impl.dart';

class MainViewModel with ChangeNotifier {
  final SubwaySearchRepositoryImpl _repository;
  MainViewModel({required SubwaySearchRepositoryImpl repository}) : _repository = repository;

  List<RealtimeArrival> realTimeArrivalList = [];

  void fetchData() async {
    realTimeArrivalList = await _repository.getRealtimeArrivalList();
    notifyListeners();
  }
}
