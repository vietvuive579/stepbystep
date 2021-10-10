import 'package:get/get.dart';
import 'package:stepbystep/model.dart';

// List<interestPeriod> listinterestPeriod = [
//   interestPeriod(
//     time3: '3 tháng',
//     time6: '3 tháng',
//     time12: '3 tháng'
// ];

// chỗ này
class Controller extends GetxController {
  List<String> periodList = ["Tất cả", "3 tháng", "6 tháng", "12 tháng"];
  String value = '';
  void increment(String checkvalue) {
    for (int i = 0; i < periodList.length; i++) {
      if (checkvalue == periodList[i]) {
        value = checkvalue;
      }
    }
    //return periodList[index];
    update();
  }
}
