import 'package:flutter/material.dart';
import 'package:flutter_application_1/appColors.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key, required this.result});
  final double result;

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  String getClass(range) {
    if (range < 16) {
      return 'Severe Thinness';
    } else if (range >= 16 && range < 17) {
      return 'Moderate Thinness';
    } else if (range >= 17 && range < 18.5) {
      return 'Mild Thinness	';
    } else if (range >= 18.5 && range < 25) {
      return 'Normal';
    } else if (range >= 25 && range < 30) {
      return 'Overweight	';
    } else if (range >= 30 && range < 35) {
      return 'Obese Class I	';
    } else if (range >= 35 && range < 40) {
      return 'Obese Class II ';
    } else {
      return 'Obese Class III	';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBg,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: AppColors.white,
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              'Your result',
              style: TextStyle(color: AppColors.white, fontSize: 30),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                width: 450,
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    color: AppColors.containerBg,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 120,
                    ),
                    Text(
                      getClass(widget.result),
                      style: TextStyle(
                          color: AppColors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    Text(
                      widget.result.toStringAsFixed(2),
                      style: TextStyle(color: AppColors.white, fontSize: 50),
                    ),
                    const SizedBox(
                      height: 75,
                    ),
                    Padding(
                      // padding: const EdgeInsets.symmetric(horizontal: 30),
                      padding: const EdgeInsets.only(right: 50, left: 15),
                      child: Text(
                        'Your Body Weight is absolutely ${getClass(widget.result)}.',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const ContinuousRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      backgroundColor: AppColors.red,
                      foregroundColor: Colors.white),
                  onPressed: () {},
                  child: const Text('Recalculate'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}