import 'package:climat_confort/app/modules/home_module/home_controller.dart';
import 'package:climat_confort/app/utils/widgets/custom_text.dart';
import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetWidget<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: CustomText(
            text: 'Climat Confort',
            fontWeight: FontWeight.w700,
            fontSize: Get.width * 0.04,
          )),
      body: Obx(
        () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: Get.width * 0.6,
                child: DashedCircularProgressBar.aspectRatio(
                  aspectRatio: 1, // width ÷ height
                  valueNotifier: controller.valueNotifier,
                  progress: controller.convertTemperatureToProgress(
                      controller.indoorTemp.value),
                  startAngle: 225,
                  sweepAngle: 270,
                  foregroundColor: Colors.green,
                  backgroundColor: const Color(0xffeeeeee),
                  foregroundStrokeWidth: 15,
                  backgroundStrokeWidth: 15,
                  animation: true,
                  seekSize: 6,
                  seekColor: const Color(0xffeeeeee),
                  child: Center(
                    child: ValueListenableBuilder(
                        valueListenable: controller.valueNotifier,
                        builder: (_, double value, __) => Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomText(
                                  text: '${controller.indoorTemp}°C',
                                  colorText: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: Get.width * 0.1,
                                ),
                                CustomText(
                                  text: 'Temperature Intérieure',
                                  colorText: Colors.green,
                                  fontWeight: FontWeight.w400,
                                  fontSize: Get.width * 0.03,
                                ),
                              ],
                            )),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(10),
                width: Get.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.cloud,
                              color: Colors.green, size: 24),
                          SizedBox(height: 4),
                          CustomText(
                            text: '${controller.outdoorTemp}°C',
                            colorText: Colors.green,
                            fontSize: Get.width * 0.04,
                          ),
                          CustomText(
                            text: 'Extérieur',
                            colorText: Colors.grey,
                            fontSize: Get.width * 0.03,
                          ),
                        ],
                      ),
                    ),
                    const VerticalDivider(
                      thickness: 10,
                      color: Colors.grey,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Icon(Icons.opacity, color: Colors.green, size: 24),
                          SizedBox(height: 4),
                          CustomText(
                            text: '${controller.humidity.value}%',
                            colorText: Colors.green,
                            fontSize: Get.width * 0.04,
                          ),
                          CustomText(
                            text: 'Humidité',
                            colorText: Colors.grey,
                            fontSize: Get.width * 0.03,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
