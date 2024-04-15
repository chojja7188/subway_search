import 'package:flutter/material.dart';

class RailService {

  Widget getRailText(String id) {

    switch(int.tryParse(id)) {
      case 1001:
        return Text('1호선', style: TextStyle(color: Color(0xff0052A4)));
      case 1002:
        return Text('2호선', style: TextStyle(color: Color(0xff00A84D)));
      case 1003:
        return Text('3호선', style: TextStyle(color: Color(0xffEF7C1C)));
      case 1004:
        return Text('4호선', style: TextStyle(color: Color(0xff00A4E3)));
      case 1005:
        return Text('5호선', style: TextStyle(color: Color(0xff996CAC)));
      case 1006:
        return Text('6호선', style: TextStyle(color: Color(0xffCD7C2F)));
      case 1007:
        return Text('7호선', style: TextStyle(color: Color(0xff747F00)));
      case 1008:
        return Text('8호선', style: TextStyle(color: Color(0xffE6186C)));
      case 1009:
        return Text('9호선', style: TextStyle(color: Color(0xffBDB092)));
      case 1032:
        return Text('GTX-A', style: TextStyle(color: Color(0xff9A6292)));
      case 1061:
        return Text('중앙선', style: TextStyle(color: Color(0xff77C4A3)));
      case 1063:
        return Text('경의중앙선', style: TextStyle(color: Color(0xff77C4A3)));
      case 1065:
        return Text('공항철도', style: TextStyle(color: Color(0xff0090D2)));
      case 1067:
        return Text('경춘선', style: TextStyle(color: Color(0xff178C72)));
      case 1075:
        return Text('수인분당선', style: TextStyle(color: Color(0xffFABE00)));
      case 1077:
        return Text('신분당선', style: TextStyle(color: Color(0xffD31145)));
      case 1081:
        return Text('경강선', style: TextStyle(color: Color(0xffFD8100)));
      case 1092:
        return Text('우이신설선', style: TextStyle(color: Color(0xffB7C450)));
      case 1093:
        return Text('서해선', style: TextStyle(color: Color(0xff8FC31F)));
      default:
        return Text('undefined', style: TextStyle(color: Color(0xff000000)));
    }
  }
}