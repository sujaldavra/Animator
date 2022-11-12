import 'package:flutter/material.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator>
    with TickerProviderStateMixin {
  int sliderVal = 50;
  int _weight = 40;
  int _age = 18;
  bool isMaleSelected = true;
  bool isFemaleSelected = false;
  bool isWeightIncreased = true;
  bool isWeightDecreased = false;
  bool isAgeIncreased = true;
  bool isAgeDecreased = false;

  late AnimationController maleAnimationController;
  late AnimationController femaleAnimationController;
  late AnimationController sliderAnimationController;
  late AnimationController boxAnimationController;

  late Animation maleHeightAnimation;
  late Animation maleWidthAnimation;
  late Animation femaleHeightAnimation;
  late Animation femaleWidthAnimation;

  @override
  void initState() {
    super.initState();

    maleAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    femaleAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    sliderAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    boxAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    maleHeightAnimation = TweenSequence([
      TweenSequenceItem(tween: Tween<double>(begin: 250, end: 260), weight: 1),
      TweenSequenceItem(tween: Tween<double>(begin: 260, end: 250), weight: 1),
    ]).animate(maleAnimationController);

    femaleHeightAnimation = TweenSequence([
      TweenSequenceItem(tween: Tween<double>(begin: 250, end: 260), weight: 1),
      TweenSequenceItem(tween: Tween<double>(begin: 260, end: 250), weight: 1),
    ]).animate(femaleAnimationController);

    maleWidthAnimation = TweenSequence([
      TweenSequenceItem(tween: Tween<double>(begin: 170, end: 180), weight: 1),
      TweenSequenceItem(tween: Tween<double>(begin: 180, end: 170), weight: 1),
    ]).animate(maleAnimationController);

    femaleWidthAnimation = TweenSequence([
      TweenSequenceItem(tween: Tween<double>(begin: 170, end: 180), weight: 1),
      TweenSequenceItem(tween: Tween<double>(begin: 180, end: 170), weight: 1),
    ]).animate(femaleAnimationController);

    maleAnimationController.forward();
    femaleAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff090E21),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xff3B3C4D).withOpacity(0.3),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(13),
                  bottomRight: Radius.circular(13),
                ),
              ),
              child: Row(
                children: const [
                  Spacer(),
                  Text(
                    "BMI Calculator",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Spacer(flex: 1),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isFemaleSelected = true;
                            isMaleSelected = false;
                            femaleAnimationController.reverse();
                          });
                        },
                        child: AnimatedBuilder(
                          animation: femaleAnimationController,
                          builder: (context, widget) {
                            return Container(
                              height: femaleHeightAnimation.value,
                              width: femaleWidthAnimation.value,
                              decoration: BoxDecoration(
                                color: (isFemaleSelected)
                                    ? const Color(0xff3B3C4D)
                                    : const Color(0xff1D1E33),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.female,
                                    size: 120,
                                    color: (isFemaleSelected)
                                        ? Colors.red
                                        : Colors.white,
                                  ),
                                  Text(
                                    "Female",
                                    style: TextStyle(
                                      color: (isFemaleSelected)
                                          ? Colors.red
                                          : Colors.white,
                                      fontSize: 24,
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      const Spacer(flex: 1),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isFemaleSelected = false;
                            isMaleSelected = true;
                            maleAnimationController.reverse();
                          });
                        },
                        child: AnimatedBuilder(
                          animation: maleAnimationController,
                          builder: (context, widget) {
                            return Container(
                              height: maleHeightAnimation.value,
                              width: maleWidthAnimation.value,
                              decoration: BoxDecoration(
                                color: (isMaleSelected)
                                    ? const Color(0xff3B3C4D)
                                    : const Color(0xff1D1E33),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.male,
                                    size: 120,
                                    color: (isMaleSelected)
                                        ? Colors.red
                                        : Colors.white,
                                  ),
                                  Text(
                                    "Male",
                                    style: TextStyle(
                                      color: (isMaleSelected)
                                          ? Colors.red
                                          : Colors.white,
                                      fontSize: 24,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      const Spacer(flex: 1),
                    ],
                  ),
                  const SizedBox(height: 20),
                  AnimatedBuilder(
                    animation: sliderAnimationController,
                    builder: (context, widget) {
                      return Container(
                        height: 190,
                        width: 360,
                        decoration: BoxDecoration(
                          color: const Color(0xff1D1E33),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 15),
                            const Text(
                              "HEIGHT",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff626473),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '$sliderVal',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 52,
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  alignment: const Alignment(0, 0.2),
                                  child: const Text(
                                    "cm",
                                    style: TextStyle(
                                      color: Colors.white24,
                                      fontSize: 24,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Slider(
                              value: sliderVal.toDouble(),
                              onChanged: (val) {
                                setState(() {
                                  sliderVal = val.toInt();
                                });
                              },
                              min: 50,
                              max: 300,
                              thumbColor: const Color(0xffeb1555),
                              activeColor: const Color(0xfff5c1d1),
                              inactiveColor: Colors.white,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Spacer(flex: 1),
                      Container(
                        height: 170,
                        width: 170,
                        decoration: BoxDecoration(
                          color: const Color(0xff1D1E33),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Weight',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                            const SizedBox(height: 13),
                            Text(
                              '$_weight',
                              style: const TextStyle(
                                  fontSize: 40, color: Colors.white),
                            ),
                            const SizedBox(height: 13),
                            Row(
                              children: [
                                const Spacer(flex: 2),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _weight--;

                                      isWeightIncreased = false;
                                      isWeightDecreased = true;
                                    });
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: (isWeightDecreased)
                                          ? const Color(0xff6E6F7A)
                                          : const Color(0xff4C4F5E),
                                    ),
                                    alignment: Alignment.center,
                                    child: Icon(
                                      Icons.remove,
                                      color: (isWeightDecreased)
                                          ? const Color(0xffeb1555)
                                          : Colors.white,
                                    ),
                                  ),
                                ),
                                const Spacer(flex: 2),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _weight++;
                                      isWeightIncreased = true;
                                      isWeightDecreased = false;
                                    });
                                  },
                                  child: Ink(
                                    child: Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: (isWeightIncreased)
                                            ? const Color(0xff6E6F7A)
                                            : const Color(0xff4C4F5E),
                                      ),
                                      alignment: Alignment.center,
                                      child: Icon(Icons.add,
                                          color: (isWeightIncreased)
                                              ? const Color(0xffeb1555)
                                              : Colors.white),
                                    ),
                                  ),
                                ),
                                const Spacer(flex: 2),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Spacer(flex: 1),
                      Container(
                        height: 170,
                        width: 170,
                        decoration: BoxDecoration(
                          color: const Color(0xff1D1E33),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Age',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                            const SizedBox(height: 13),
                            Text(
                              '$_age',
                              style: const TextStyle(
                                  fontSize: 40, color: Colors.white),
                            ),
                            const SizedBox(height: 13),
                            Row(
                              children: [
                                const Spacer(flex: 2),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _age--;

                                      isAgeDecreased = true;
                                      isAgeIncreased = false;
                                    });
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: (isAgeDecreased)
                                          ? const Color(0xff6E6F7A)
                                          : const Color(0xff4C4F5E),
                                    ),
                                    alignment: Alignment.center,
                                    child: Icon(
                                      Icons.remove,
                                      color: (isAgeDecreased)
                                          ? const Color(0xffeb1555)
                                          : Colors.white,
                                    ),
                                  ),
                                ),
                                const Spacer(flex: 2),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _age++;

                                      isAgeDecreased = false;
                                      isAgeIncreased = true;
                                    });
                                  },
                                  child: Ink(
                                    child: Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: (isAgeIncreased)
                                            ? const Color(0xff6E6F7A)
                                            : const Color(0xff4C4F5E),
                                      ),
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.add,
                                        color: (isAgeIncreased)
                                            ? const Color(0xffeb1555)
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(flex: 2),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Spacer(flex: 1),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // const Spacer(),
                  InkWell(
                    onTap: () {
                      setState(() {});
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text(
                        "Calculate",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
