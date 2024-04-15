import 'package:subway_search/data/dto/subway_search_dto.dart';
import 'package:subway_search/data/model/realtime_arrival.dart';

extension ToRealtimeArrival on RealtimeArrivalList {
  RealtimeArrival toRealtimeArrival() {
    return RealtimeArrival(
        totalCount: totalCount ?? 0,
        rowNum: rowNum ?? 0,
        selectedCount: selectedCount ?? 0,
        subwayId: subwayId ?? '',
        updnLine: updnLine ?? '',
        trainLineNm: trainLineNm ?? '',
        statnFid: statnFid ?? '',
        statnTid: statnTid ?? '',
        statnId: statnId ?? '',
        statnNm: statnNm ?? '',
        trnsitCo: trnsitCo ?? '',
        ordkey: ordkey ?? '',
        subwayList: subwayList ?? '',
        statnList: statnList ?? '',
        btrainSttus: btrainSttus ?? '',
        barvlDt: barvlDt ?? '',
        btrainNo: btrainNo ?? '',
        bstatnId: bstatnId ?? '',
        bstatnNm: bstatnNm ?? '',
        recptnDt: recptnDt ?? '',
        arvlMsg2: arvlMsg2 ?? '',
        arvlMsg3: arvlMsg3 ?? '',
        arvlCd: int.tryParse(arvlCd!) ?? 0
    );
  }
}