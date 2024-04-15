import 'package:subway_search/data/model/realtime_arrival.dart';

abstract interface class SubwaySearchRepository {
  Future<List<RealtimeArrival>> getRealtimeArrivalList(String stationName);
}