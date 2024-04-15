import 'dart:convert';

import 'package:http/http.dart' as http;

import '../dto/subway_search_dto.dart';

class SubwaySearchApi {

  Future<List<RealtimeArrivalList>> getRealtimeArrival() async {
    final response = await http.get(Uri.parse(
        'http://swopenapi.seoul.go.kr/api/subway/sample/json/realtimeStationArrival/0/5/%EC%84%9C%EC%9A%B8'));

    List jsonList = jsonDecode(response.body)['realtimeArrivalList'];
    return jsonList.map((e) => RealtimeArrivalList.fromJson(e)).toList();
  }

}