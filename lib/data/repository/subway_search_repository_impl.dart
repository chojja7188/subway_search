import 'package:subway_search/data/data_source/subway_search_api.dart';
import 'package:subway_search/data/mapper/realtime_arrival_mapper.dart';
import 'package:subway_search/data/model/realtime_arrival.dart';
import 'package:subway_search/data/repository/subway_search_repository.dart';

class SubwaySearchRepositoryImpl implements SubwaySearchRepository{
  final SubwaySearchApi _api = SubwaySearchApi();

  @override
  Future<List<RealtimeArrival>> getRealtimeArrivalList() async {
    final response = await _api.getRealtimeArrival();

    final List<RealtimeArrival> realtimeArrivalList = response.map((e) => e.toRealtimeArrival()).toList();

    return realtimeArrivalList;
  }
}