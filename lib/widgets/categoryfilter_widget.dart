import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multiselection_getx/screens/main/main_controller.dart';

import 'category_widgets.dart';

class CateGoryFilter extends StatelessWidget {
  CateGoryFilter({this.checkBool = true});

  bool checkBool;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainController());

    return Flexible(
        child: Obx(
      () => controller.changeShow.value
          ? ListView.builder(
              itemCount: controller.categories.length,
              itemBuilder: (context, index) {
                return checkBool
                    ? CheckboxListTile(
                        title: CategoryWidget(
                          category_model: controller.categories[index],
                        ),
                        value: controller.checkList[index],
                        onChanged: (bool? selected) {
                          controller.changeShow.value = false;
                          controller.checkList.value[index] = selected!;
                          controller.changeShow.value = true;
                        })
                    : Obx(() => controller.checkList.value[index]
                        ? CategoryWidget(
                            category_model: controller.categories[index],
                          )
                        : Container());
              })
          : CircularProgressIndicator(),
    ));
  }
}
