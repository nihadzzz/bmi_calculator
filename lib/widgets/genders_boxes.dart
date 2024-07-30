import 'package:bmi_calculator_app/widgets/gender_box_widget.dart';
import 'package:bmi_calculator_app/widgets/splash_button.dart';
import 'package:flutter/material.dart';

class GendersBoxes extends StatefulWidget {
  const GendersBoxes({super.key});

  @override
  State<GendersBoxes> createState() => _GendersBoxesState();
}

class _GendersBoxesState extends State<GendersBoxes> {

  Color maleColor = const Color(0xff1E1F32);
  Color femaleColor = const Color(0xff1E1F32);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          SplashButton(
            buttonColor: maleColor,
            child: const GenderBoxWidget(
              icon: Icons.male_rounded,
              title: 'MALE',
            ),
            onTap: () {
              if (maleColor == const Color(0xff1E1F32)) {
                maleColor = const Color.fromARGB(255, 64, 67, 126);
                femaleColor = const Color(0xff1E1F32);
                setState(() {});
              }
            },
          ),
          const SizedBox(width: 16),
          SplashButton(
            buttonColor: femaleColor,
            child: const GenderBoxWidget(
              icon: Icons.female_rounded,
              title: 'FEMALE',
            ),
            onTap: () {
              if (femaleColor == const Color(0xff1E1F32)) {
                femaleColor = const Color.fromARGB(255, 64, 67, 126);
                maleColor = const Color(0xff1E1F32);
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
