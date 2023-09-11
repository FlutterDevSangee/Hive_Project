import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hiveapp/Util/Hive/boxes.dart';
import 'package:hiveapp/Util/Hive/person.dart';

class HiveController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final TextEditingController nameCntrlr = TextEditingController();
  final TextEditingController ageCntrlr = TextEditingController();
//----------------- Adding
  void addData() {
    boxPersonss!.put('key_${nameCntrlr.text}',
        Person(name: nameCntrlr.text, age: int.parse(ageCntrlr.text)));
    update();
    nameCntrlr.clear();
    ageCntrlr.clear();
  }

//---------------- Delete
  deletes(index) {
    boxPersonss!.deleteAt(index);
    update();
  }
}
