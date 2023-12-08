import 'package:flutter/material.dart';
import 'package:flutter_application_1/appcolors.dart';
import 'package:flutter_application_1/counter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int weight = 50;
  int height = 160;
  int age = 25;
  bool isMale = true;
  String getClass(range) {
    if (range > 16) {
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
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: AppColors.scaffoldBg,
        title: const Text(
          'BMI Calculator App',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            isMale = true;
                          },
                        );
                      },
                      child: Container(
                        height: 250,
                        decoration: BoxDecoration(
                            color: (isMale)
                                ? AppColors.red
                                : AppColors.containerBg,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                size: 120,
                                color: AppColors.white,
                              ),
                              Text(
                                'Male',
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        height: 250,
                        decoration: BoxDecoration(
                            color: (!isMale)
                                ? AppColors.red
                                : AppColors.containerBg,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                size: 120,
                                color: AppColors.white,
                              ),
                              Text(
                                'female',
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: 250,
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    color: AppColors.containerBg,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Height',
                        style: TextStyle(color: AppColors.grey, fontSize: 20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '$height',
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'cm',
                            style: TextStyle(
                                color: AppColors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Slider(
                        thumbColor: AppColors.red,
                        activeColor: AppColors.red,
                        value: height.toDouble(),
                        onChanged: (value) {
                          setState(() {
                            height = value.toInt();
                          });
                        },
                        max: 220,
                        min: 120,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 250,
                      decoration: BoxDecoration(
                          color: AppColors.containerBg,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Weight',
                              style: TextStyle(
                                  color: AppColors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            // const SizedBox(height: 20),
                            Text(
                              '$weight ',
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: AppColors.grey,
                                  foregroundColor: Colors.white,
                                  mini: true,
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  child: const Icon(Icons.remove),
                                ),
                                FloatingActionButton(
                                  backgroundColor: AppColors.grey,
                                  foregroundColor: Colors.white,
                                  mini: true,
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: const Icon(Icons.add),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 250,
                      decoration: BoxDecoration(
                          color: AppColors.containerBg,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Age',
                              style: TextStyle(
                                  color: AppColors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            // const SizedBox(height: 20),
                            Text(
                              '$age',
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: AppColors.grey,
                                  foregroundColor: Colors.white,
                                  mini: true,
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  child: const Icon(Icons.remove),
                                ),
                                FloatingActionButton(
                                  backgroundColor: AppColors.grey,
                                  foregroundColor: Colors.white,
                                  mini: true,
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: const Icon(Icons.add),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
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
                  onPressed: () {
                    double result = weight / (height * height * .0001);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => CounterScreen(
                          result: result,
                        ),
                      ),
                    );
                  },
                  child: const Text('Calculate'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
