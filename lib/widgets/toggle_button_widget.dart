import 'package:flutter/material.dart';

class ToggleButtonWidget extends StatelessWidget {
  final String name;

  const ToggleButtonWidget({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 38) / 5,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          name,
          style: TextStyle(
            color: Colors.white,
          )
        ),
      ),
    );
  }
}