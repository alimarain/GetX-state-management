import 'package:get/get.dart';

class CounterController extends GetxController {
  // int count = 0;
  // increment(){
  //   count ++;
  //   update();
  // }
 Rx <int> count = 0.obs;
  increaseCount(){
      count.value++;
}
}