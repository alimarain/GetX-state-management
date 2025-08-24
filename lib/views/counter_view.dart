import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/controller/counter_controller.dart';
import 'package:learn_getx/home.dart';


class CounterView extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter with GetX")),
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
            heroTag: null,
            onPressed: () {
              counterController.increaseCount();

              Get.snackbar(
                "Counter Updated",                
                "Value: ${counterController.count}", 
                snackPosition: SnackPosition.BOTTOM,
                backgroundColor: Colors.black87,
                colorText: Colors.white,
                margin: EdgeInsets.all(10),
                duration: Duration(seconds: 2),
              );
            },
            child: Icon(Icons.add),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              Get.to(Home());

              Get.snackbar(
                "Navigation",
                "Moved to Home Screen",
                snackPosition: SnackPosition.TOP,
                backgroundColor: Colors.blueAccent,
                colorText: Colors.white,
              );
            },
            child: Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}
