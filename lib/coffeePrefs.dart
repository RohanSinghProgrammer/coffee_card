import 'package:coffee_card/shared/styled_body_text.dart';
import 'package:coffee_card/shared/styles_button.dart';
import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugar = 1;

  void incStrength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void incSugar() {
    setState(() {
      sugar = sugar < 5 ? sugar + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const StyledBodyText("Strength: "),
            for (int i = 0; i < strength; i++)
              Image.asset(
                "assets/img/coffee_bean.png",
                width: 30,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            StyledButton(onPressed: incStrength, child: const Text("+"))
          ],
        ),
        Row(
          children: [
            const StyledBodyText(
              "Sugar: ",
            ),
            if (sugar == 0) const StyledBodyText("Sugar Free!"),
            for (int i = 0; i < sugar; i++)
              Image.asset(
                "assets/img/sugar_cube.png",
                width: 30,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            StyledButton(onPressed: incSugar, child: const Text("+"))
          ],
        )
      ],
    );
  }
}
