import 'package:freezed_annotation/freezed_annotation.dart';

part 'realtime_arrival.freezed.dart';

part 'realtime_arrival.g.dart';

@freezed
class RealtimeArrival with _$RealtimeArrival {
  const factory RealtimeArrival({
    required num totalCount,
    required num rowNum,
    required num selectedCount,
    required String subwayId,
    required String updnLine,
    required String trainLineNm,
    required String statnFid,
    required String statnTid,
    required String statnId,
    required String statnNm,
    required String trnsitCo,
    required String ordkey,
    required String subwayList,
    required String statnList,
    required String btrainSttus,
    required String barvlDt,
    required String btrainNo,
    required String bstatnId,
    required String bstatnNm,
    required String recptnDt,
    required String arvlMsg2,
    required String arvlMsg3,
    required int arvlCd,
  }) = _RealtimeArrival;

  factory RealtimeArrival.fromJson(Map<String, Object?> json) => _$RealtimeArrivalFromJson(json);
}