class RailService {

  String getRailText(String id) {

    switch(int.tryParse(id)) {
      case 1001:
        return '1호선';
      case 1002:
        return '2호선';
      case 1003:
        return '3호선';
      case 1004:
        return '4호선';
      case 1005:
        return '5호선';
      case 1006:
        return '6호선';
      case 1007:
        return '7호선';
      case 1008:
        return '8호선';
      case 1009:
        return '9호선';
      case 1032:
        return 'GTX-A';
      case 1061:
        return '중앙선';
      case 1063:
        return '경의중앙선';
      case 1065:
        return '공항철도';
      case 1067:
        return '경춘선';
      case 1075:
        return '수의분당선';
      case 1077:
        return '신분당선';
      case 1081:
        return '경강선';
      case 1092:
        return '우이신설선';
      case 1093:
        return '서해선';
      default:
        return 'undefiend';
    }
  }
}