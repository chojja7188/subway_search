import 'dart:convert';

import 'package:http/http.dart' as http;

import '../dto/subway_search_dto.dart';

class SubwaySearchApi {

  Future<List<RealtimeArrivalList>> getRealtimeArrival(String stationName) async {

    final response = await http.get(Uri.parse(
        'http://swopenapi.seoul.go.kr/api/subway/sample/json/realtimeStationArrival/0/5/$stationName'));

    List jsonList = jsonDecode(response.body)['realtimeArrivalList'];
    return jsonList.map((e) => RealtimeArrivalList.fromJson(e)).toList();
  }

}