import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learn_getx/controller/counter_controller.dart';
import 'package:learn_getx/home.dart';

class CounterView extends StatelessWidget {
   CounterView({super.key});
CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // body: GetBuilder<CounterController>(
      //   builder:(context){
      //     return Center(
      //       child: Text("$(countercontrol.count)")
            
      //     );
      //   } ,),
 body: Obx(
  () => Center(
    child: Text(
      "${counterController.count}",
      style: TextStyle(fontSize: 40),
    ),
  ),
),
floatingActionButton: Row(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
    FloatingActionButton(
      heroTag: "btn1",
      onPressed: () {
        counterController.increaseCount();
      },
      child: Icon(Icons.add),
    ),
    SizedBox(width: 10),
    FloatingActionButton(
      heroTag: "btn2",
      onPressed: () {
        Get.to(Home()); 
      },
      child: Icon(Icons.home),
    ),
  ],
),

    );
  }
}