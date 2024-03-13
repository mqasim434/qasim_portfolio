import 'package:flutter/material.dart';

class ToolInsightsWidget extends StatelessWidget {
  const ToolInsightsWidget(
      {super.key, required this.toolName, required this.percentage});

  final String toolName;
  final int percentage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          SizedBox(
            width: 200,
            child: Text(
              toolName,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Stack(
            children: [
              Container(
                width: 100,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Container(
                width: percentage.toDouble(),
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 5,
          ),
          Text('${percentage.toString()} %',
              style: const TextStyle(
                color: Colors.black,
              )),
        ],
      ),
    );
  }
}
